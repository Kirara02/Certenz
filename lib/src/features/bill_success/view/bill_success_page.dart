import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icon.dart';

import '../../../widgets/common/text_column.dart';

class BillSuccessPage extends StatelessWidget {
  final int transactionId;

  const BillSuccessPage({
    super.key,
    required this.transactionId,
  });

  @override
  Widget build(BuildContext context) {
    vLog({"transactionId": transactionId});
    return BlocProvider(
      create: (context) => HistoryBloc()
        ..add(HistoryEvent.getByTransactionId(transactionId: transactionId)),
      child: WillPopScope(
        onWillPop: () async {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go("/home");
          }
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            titleSpacing: 0,
            leading: const LineIcon.arrowLeft(
              color: Color(0xff901A00),
              size: AppConstants.kFontSizeXL,
            ),
            title: Text(
              LocaleKeys.detail_transaction_title.tr(),
              style: const TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          backgroundColor: const Color(0xffF7F7F7),
          body: BlocBuilder<HistoryBloc, HistoryState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () => SpinKitCircle(
                  color: AppColors.primaryColors,
                ),
                loadedBillHistory: (data) {
                  DateTime dateTime = DateTime.parse(data.transactionDatetime!);
                  String formattedDate =
                      DateFormat('dd MMMM yyyy').format(dateTime);
                  String formattedTime =
                      DateFormat('HH:mm:ss').format(dateTime);

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              LocaleKeys.detail_transaction_subtitle.tr(),
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeL,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: AppColors.neutralN120,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 54,
                                height: 54,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: AppColors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: const LineIcon.check(
                                  color: UIColors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              formatCurrencyNonDecimal(
                                  data.totalAmountBill!.toDouble()),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeX,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 20),
                          decoration: BoxDecoration(
                            color: UIColors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.2),
                                offset: const Offset(0, -1),
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Center(
                                child: Text(
                                  LocaleKeys.detail_transaction_details.tr(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.neutralN30,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              TextColum(
                                title: LocaleKeys.detail_transaction_date.tr(),
                                value: "$formattedDate\n$formattedTime",
                              ),
                              TextColum(
                                title:
                                    LocaleKeys.detail_transaction_pay_to.tr(),
                                value: data.toName,
                              ),
                              TextColum(
                                title: LocaleKeys.detail_transaction_from.tr(),
                                value: data.fromName,
                              ),
                              TextColum(
                                title: LocaleKeys
                                    .detail_transaction_payment_method
                                    .tr(),
                                value: data.paymentMethod,
                              ),
                              TextColum(
                                title: LocaleKeys
                                    .detail_transaction_desc_account
                                    .tr(),
                                value: data.toAccount,
                                subtitleTextDecoration:
                                    TextDecoration.lineThrough,
                              ),
                              TextColum(
                                title: LocaleKeys.form_title_total_amount.tr(),
                                value: formatCurrency(2500),
                              ),
                              const Spacer(),
                              const PoweredWidget(),
                              const SizedBox(height: 12),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
