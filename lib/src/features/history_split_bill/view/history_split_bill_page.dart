import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:certenz/src/features/split_bill/widget/people_split_card.dart';
import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/common/custom_appbar.dart';

class HistorySplitBillPage extends StatefulWidget {
  final int transactionId;
  final String? type;
  final bool isPayment;
  const HistorySplitBillPage({
    super.key,
    required this.transactionId,
    this.type,
    this.isPayment = false,
  });

  @override
  State<HistorySplitBillPage> createState() => _HistorySplitBillPageState();
}

class _HistorySplitBillPageState extends State<HistorySplitBillPage> {
  UserModel? user;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  void initUser() async {
    user = await SecureStorageHelper.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryBloc()
        ..add(HistoryEvent.getSplitBillByTransactionId(
            transactionId: widget.transactionId)),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppbarCustom(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go("/home");
              }
            },
            title: LocaleKeys.detail_split_bill_title.tr(),
            shape: LinearBorder.none,
            type: "<",
          ),
          body: WillPopScope(
            onWillPop: () async {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go("/home");
              }
              return false;
            },
            child: BlocBuilder<HistoryBloc, HistoryState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => SpinKitCircle(
                    color: AppColors.primaryColors,
                  ),
                  loadedSplitBillHistory: (data) {
                    dLog(data);
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 24,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(33),
                                bottomRight: Radius.circular(33),
                              ),
                            ),
                            child: Container(
                              width: AppScreens.width,
                              padding: const EdgeInsets.symmetric(vertical: 24),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: AppScreens.width,
                                    child: Center(
                                      child: Image.asset(
                                        Assets.images.logo.path,
                                        height: 24,
                                        width: AppScreens.width * 0.2,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Center(
                                    child: Text(
                                      LocaleKeys.form_title_title.tr(),
                                      style: const TextStyle(
                                        fontSize: AppConstants.kFontSizeS,
                                        color: AppColors.neutralN20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Center(
                                    child: Text(
                                      data.title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.neutralN20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Center(
                                    child: Text(
                                      LocaleKeys.detail_split_bill_t_amount
                                          .tr(),
                                      style: const TextStyle(
                                        fontSize: AppConstants.kFontSizeS,
                                        color: AppColors.neutralN20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Center(
                                    child: Text(
                                      formatCurrencyNonDecimal(data.splitData
                                          .fold(
                                              0,
                                              (sum, item) =>
                                                  sum +
                                                  (item.totalAmountBill ?? 0))),
                                      style: const TextStyle(
                                        fontSize: AppConstants.kFontSizeXXL,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.neutralN20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 12),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Text(
                                            LocaleKeys
                                                .detail_split_bill_split_with
                                                .tr(),
                                            style: const TextStyle(
                                              fontSize: AppConstants.kFontSizeS,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.neutralN40,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: data.splitData.length,
                                          itemBuilder: (context, index) {
                                            var item = data.splitData[index];
                                            return PeopleSplitCard(
                                              name: item.fromName ?? "-",
                                              email: item.toEmail ?? "-",
                                              amount: item.totalAmountBill ?? 0,
                                              phoneNumber: "-",
                                              status: item.status ?? "-",
                                              isPayment: widget.isPayment,
                                              disabled:
                                                  item.toEmail == user?.email
                                                      ? true
                                                      : false,
                                              onTap: () {
                                                if (widget.isPayment) {
                                                  if (user!.email ==
                                                          item.toEmail &&
                                                      item.status ==
                                                          "Pending") {
                                                    context.pushNamed(
                                                      "select-payment",
                                                      queryParameters: {
                                                        "title": data.title,
                                                        "amount": item
                                                            .totalAmountBill
                                                            .toString(),
                                                        "transaction_id": widget
                                                            .transactionId
                                                            .toString(),
                                                        "split_id": item.splitId
                                                            .toString(),
                                                        "type": widget.type
                                                      },
                                                    );
                                                  } else if (user!.email ==
                                                          item.toEmail &&
                                                      item.status ==
                                                          "Success") {
                                                    UXToast.show(
                                                        message:
                                                            "Anda sudah membayar bill ini");
                                                  }
                                                } else {
                                                  context.pushNamed("qr-code",
                                                      extra: BillModel(
                                                        id: data.id,
                                                        billNumber:
                                                            data.billNumber,
                                                        userId: data.userId,
                                                        title: data.title,
                                                        totalAmountBill: item
                                                            .totalAmountBill!,
                                                        transactionDatetime: item
                                                            .transactionDatetime!,
                                                        fromAccount:
                                                            item.fromAccount!,
                                                        fromName:
                                                            item.fromName!,
                                                        billType:
                                                            item.billType!,
                                                        qrCode: item.qrCode,
                                                        status: item.status,
                                                        tenantPeriod:
                                                            item.tenantPeriod,
                                                      ));
                                                }
                                              },
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  const PoweredWidget(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            width: AppScreens.width * 0.5,
                            child: ShareBillTo(
                              text:
                                  LocaleKeys.detail_split_bill_share_split.tr(),
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
