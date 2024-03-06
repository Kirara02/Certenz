import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/blocs/notification/notification_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/notification/notification_model.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/common/empty_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:line_icons/line_icon.dart';

class NotificationTransactionSection extends StatefulWidget {
  const NotificationTransactionSection({super.key});

  @override
  State<NotificationTransactionSection> createState() =>
      _NotificationTransactionSectionState();
}

class _NotificationTransactionSectionState
    extends State<NotificationTransactionSection> {
  TextEditingController dateController = TextEditingController();
  final PagingController<int, NotificationModel> _pagingController =
      PagingController(firstPageKey: 1);
  late String date;
  String? fromDate;
  String? toDate;

  List<NotificationModel> listData = [];

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<NotificationBloc>().add(NotificationEvent.getAllNotification(
            page: pageKey,
            pagination: 12,
            fromDate: fromDate,
            toDate: toDate,
          ));
    });
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
    super.initState();
  }

  Future _deliveryDate() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: SelectDatePicker(
            passDate: true,
            tanggal_awal: date,
            rangePicker: true,
          ),
        );
      },
    );
  }

  Widget _iconTypeBill(String type) {
    switch (type) {
      case "Create Bill":
        return Assets.icons.cbill.svg(width: 18);
      case "Split Bill":
        return Assets.icons.splitBill.svg(width: 18);
      case "Account Billing":
        return Assets.icons.accountBill.svg(width: 18);
      case "Reimbursement":
        return Assets.icons.reimbursement.svg(width: 18);
      default:
        return Assets.icons.cbill.svg(width: 18);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          fromDate = "";
          toDate = "";
        });
        dateController.clear();
        _pagingController.refresh();
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                readOnly: true,
                controller: dateController,
                style: const TextStyle(
                  color: AppColors.neutralN120,
                ),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  filled: true,
                  fillColor: AppColors.orange,
                  suffixIcon: const LineIcon.calendarAlt(color: UIColors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                ),
                onTap: () => _deliveryDate().then((value) {
                  if (value != null) {
                    setState(() {
                      fromDate = value['start_date'];
                      toDate = value['end_date'];
                    });
                    dateController.text =
                        "${value['start_date']} - ${value['end_date']}";
                    _pagingController.refresh();
                  }
                }),
              ),
            ),
            BlocListener<NotificationBloc, NotificationState>(
              listener: (context, state) {
                state.maybeWhen(
                  successPagination: (response) {
                    listData = response.data;
                    final isLastPage = response.pagination.currentPage ==
                        response.pagination.lastPage;
                    if (isLastPage) {
                      _pagingController.appendLastPage(listData);
                    } else {
                      final nextPageKey = response.pagination.currentPage! + 1;
                      _pagingController.appendPage(listData, nextPageKey);
                    }
                  },
                  orElse: () {},
                );
              },
              child: PagedListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<NotificationModel>(
                  firstPageProgressIndicatorBuilder: (context) => SpinKitCircle(
                    color: AppColors.primaryColors,
                  ),
                  noItemsFoundIndicatorBuilder: (context) =>
                      const EmptyList(message: "No Items found"),
                  newPageProgressIndicatorBuilder: (context) => SpinKitCircle(
                    color: AppColors.primaryColors,
                  ),
                  newPageErrorIndicatorBuilder: (context) =>
                      const Text('Error loading new page'),
                  itemBuilder: (context, item, index) {
                    return InkWell(
                      onTap: () async {
                        String type = "";
                        if (item.transactionCategory == "Create Bill") {
                          type = "create-bill";
                        } else if (item.transactionCategory == "Split Bill") {
                          type = "split-bill";
                        } else if (item.transactionCategory ==
                            "Account Billing") {
                          type = "account-billing";
                        } else if (item.transactionCategory ==
                            "Reimbursement") {
                          type = "reimbursement";
                        }
                        if (item.transactionCategory == "Split Bill") {
                          await context.pushNamed("history-split-bill",
                              queryParameters: {
                                "transaction_id": item.transactionId.toString(),
                                "type": type,
                                "is_payment": true.toString(),
                              });
                        } else {
                          context.pushNamed("select-payment", queryParameters: {
                            "title": item.transactionTitle,
                            "amount": item.amountTotal.toString(),
                            "transaction_id": item.transactionId.toString(),
                            "type": type,
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        decoration: BoxDecoration(
                          color: AppColors.brown.withOpacity(0.08),
                          border: Border(
                            bottom: BorderSide(
                              color: AppColors.orange.withOpacity(0.28),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.brown2.withOpacity(0.28),
                              ),
                              child: _iconTypeBill(item.transactionCategory!),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.transactionTitle ?? "",
                                  style: const TextStyle(
                                    color: AppColors.black2,
                                    fontWeight: FontWeight.w500,
                                    fontSize: AppConstants.kFontSizeS,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  item.transactionStatus ?? "",
                                  style: const TextStyle(
                                    color: AppColors.yellow2,
                                    fontWeight: FontWeight.w600,
                                    fontSize: AppConstants.kFontSizeS,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              formatCurrencyNonDecimal(
                                  item.amountTotal!.toDouble()),
                              style: const TextStyle(
                                color: AppColors.black2,
                                fontSize: AppConstants.kFontSizeL,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    dateController.dispose();
    super.dispose();
  }
}
