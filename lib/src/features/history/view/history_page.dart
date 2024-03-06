import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/empty_list.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:line_icons/line_icon.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  TextEditingController dateController = TextEditingController();
  final PagingController<int, HistoryModel> _pagingController =
      PagingController(firstPageKey: 1);
  String? selectedStatus;
  late String date;
  String? selectedType;
  List<HistoryModel> listData = [];

  @override
  void initState() {
    super.initState();
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
          ),
        );
      },
    );
  }

  Widget _badgeStatus({
    required String text,
    required String value,
    required VoidCallback onTap,
    required String? selectedItem,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: selectedItem == value
                ? const Color(0xffFFA99A)
                : UIColors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: selectedItem == value
                  ? const Color(0xffFFA99A)
                  : AppColors.black2.withOpacity(0.4),
            )),
        child: Text(
          text,
          style: TextStyle(
            color: selectedItem == value
                ? AppColors.black2
                : AppColors.black2.withOpacity(0.4),
            fontSize: AppConstants.kFontSizeS,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Future _dialogFilter() async {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.text_choose_date.tr(),
                style: const TextStyle(
                  color: AppColors.black2,
                  fontSize: AppConstants.kFontSizeS,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                readOnly: true,
                controller: dateController,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  suffixIcon: const LineIcon.calendarAlt(
                    color: AppColors.orange,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                ),
                onTap: () => _deliveryDate(),
              ),
              const SizedBox(height: 24),
              Text(
                LocaleKeys.text_type.tr(),
                style: const TextStyle(
                  color: AppColors.black2,
                  fontSize: AppConstants.kFontSizeS,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              DropdownSearch(
                selectedItem: selectedType,
                onChanged: (value) {
                  setState(() {
                    selectedType = value;
                  });
                },
                items: const [
                  "create-bill",
                  "split-bill",
                  "account-billing",
                  "reimbursement",
                ],
                popupProps: PopupProps.menu(
                  constraints: const BoxConstraints(maxHeight: 120),
                  scrollbarProps: const ScrollbarProps(
                    radius: Radius.circular(16),
                    thumbVisibility: true,
                  ),
                  menuProps: MenuProps(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Colors.orange),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Colors.orange),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              BtnPrimary(
                title: LocaleKeys.button_enter.tr(),
                onTap: () {
                  context.pop();
                },
              ),
            ],
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

  void handlePending(BuildContext context, HistoryModel item) async {
    if (item.transactionCategory == "Split Bill") {
      context.read<HistoryBloc>().add(HistoryEvent.getSplitBillByTransactionId(
          transactionId: item.transactionId!));
    } else {
      context.read<HistoryBloc>().add(
          HistoryEvent.getByTransactionId(transactionId: item.transactionId!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryBloc(),
      child: Builder(
        builder: (context) {
          _pagingController.addPageRequestListener((pageKey) {
            context.read<HistoryBloc>().add(HistoryEvent.getAllHistories(
                  page: pageKey,
                  pagination: 12,
                ));
          });
          return BlocListener<HistoryBloc, HistoryState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loadedBillHistory: (data) {
                  context.pushNamed("qr-code",
                      extra: BillModel(
                        id: data.id,
                        billNumber: data.billNumber!,
                        userId: data.userId!,
                        title: data.title!,
                        totalAmountBill: data.totalAmountBill!,
                        transactionDatetime: data.transactionDatetime!,
                        fromAccount: data.fromAccount!,
                        fromName: data.fromName!,
                        billType: data.billType!,
                        qrCode: data.qrCode,
                        status: data.status,
                        tenantPeriod: data.tenantPeriod,
                      ));
                },
                loadedSplitBillHistory: (data) {
                  dLog(data);
                  context.pushNamed("history-split-bill", queryParameters: {
                    "transaction_id": data.id.toString(),
                  });
                },
              );
            },
            child: Scaffold(
              appBar: AppbarCustom(
                showLeading: false,
                title: "History",
                centerTitle: true,
                actions: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: UIColors.white,
                    ),
                    child: InkWell(
                      onTap: () => context.pushNamed("notification"),
                      child: SvgPicture.asset(
                        Assets.icons.notification.path,
                      ),
                    ),
                  )
                ],
              ),
              body: RefreshIndicator(
                onRefresh: () async {
                  _pagingController.refresh();
                  context
                      .read<HistoryBloc>()
                      .add(const HistoryEvent.getAllHistories(
                        page: 1,
                        pagination: 12,
                      ));
                },
                child: SizedBox(
                  height: AppScreens.height,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  _badgeStatus(
                                      text: LocaleKeys.history_success.tr(),
                                      value: "success",
                                      onTap: () {
                                        setState(() {
                                          selectedStatus = "success";
                                        });
                                      },
                                      selectedItem: selectedStatus),
                                  const SizedBox(width: 12),
                                  _badgeStatus(
                                      text: LocaleKeys.history_fail.tr(),
                                      value: "fail",
                                      onTap: () {
                                        setState(() {
                                          selectedStatus = "fail";
                                        });
                                      },
                                      selectedItem: selectedStatus),
                                  const SizedBox(width: 12),
                                  _badgeStatus(
                                      text: LocaleKeys.history_on_process.tr(),
                                      value: "pending",
                                      onTap: () {
                                        setState(() {
                                          selectedStatus = "pending";
                                        });
                                      },
                                      selectedItem: selectedStatus)
                                ],
                              ),
                              GestureDetector(
                                onTap: () => _dialogFilter(),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: AppColors.neutralN120,
                                  ),
                                  child: Assets.icons.filter.svg(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        BlocListener<HistoryBloc, HistoryState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              successPagination: (response) {
                                listData = response.data;
                                final isLastPage =
                                    response.pagination.currentPage ==
                                        response.pagination.lastPage;
                                if (isLastPage) {
                                  _pagingController.appendLastPage(listData);
                                } else {
                                  final nextPageKey =
                                      response.pagination.currentPage! + 1;
                                  _pagingController.appendPage(
                                      listData, nextPageKey);
                                }
                              },
                              orElse: () {},
                            );
                          },
                          child: PagedListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            pagingController: _pagingController,
                            builderDelegate:
                                PagedChildBuilderDelegate<HistoryModel>(
                              firstPageProgressIndicatorBuilder: (context) =>
                                  SpinKitCircle(
                                color: AppColors.primaryColors,
                              ),
                              noItemsFoundIndicatorBuilder: (context) =>
                                  const EmptyList(message: "No Items found"),
                              newPageProgressIndicatorBuilder: (context) =>
                                  SpinKitCircle(
                                color: AppColors.primaryColors,
                              ),
                              newPageErrorIndicatorBuilder: (context) =>
                                  const Text('Error loading new page'),
                              itemBuilder: (context, item, index) {
                                return InkWell(
                                  onTap: () async {
                                    switch (item.transactionStatus) {
                                      case "Success":
                                        context.pushNamed(
                                          "history-success",
                                          queryParameters: {
                                            "transaction_id":
                                                item.transactionId.toString(),
                                          },
                                        );
                                      default:
                                        if (item.transactionCategory ==
                                            "Split Bill") {
                                          await context.pushNamed(
                                              "history-split-bill",
                                              queryParameters: {
                                                "transaction_id": item
                                                    .transactionId
                                                    .toString(),
                                              });
                                        } else {
                                          handlePending(context, item);
                                        }
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      margin: const EdgeInsets.only(bottom: 8),
                                      decoration: BoxDecoration(
                                        color: UIColors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.black
                                                .withOpacity(0.2),
                                            offset: const Offset(0, 1),
                                            blurRadius: 3,
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.brown2
                                                  .withOpacity(0.28),
                                            ),
                                            child: _iconTypeBill(
                                                item.transactionCategory!),
                                          ),
                                          const SizedBox(width: 16),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item.transactionTitle ?? "",
                                                style: const TextStyle(
                                                  color: AppColors.black2,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize:
                                                      AppConstants.kFontSizeS,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                item.transactionStatus ==
                                                        "Success"
                                                    ? LocaleKeys.history_success
                                                        .tr()
                                                    : LocaleKeys
                                                        .history_on_process
                                                        .tr(),
                                                style: TextStyle(
                                                  color:
                                                      item.transactionStatus ==
                                                              "Success"
                                                          ? AppColors.green2
                                                          : AppColors.yellow2,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      AppConstants.kFontSizeS,
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
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
