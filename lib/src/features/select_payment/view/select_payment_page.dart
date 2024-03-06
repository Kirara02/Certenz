import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/bank/bank_bloc.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/blocs/payment/payment_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SelectPaymentPage extends StatefulWidget {
  final String title;
  final double amount;
  final int transactionId;
  final String type;
  final int? splitId;

  const SelectPaymentPage(
      {super.key,
      required this.title,
      required this.amount,
      required this.transactionId,
      required this.type,
      this.splitId});

  @override
  State<SelectPaymentPage> createState() => _SelectPaymentPageState();
}

class _SelectPaymentPageState extends State<SelectPaymentPage> {
  List<BankModel> listBanks = [];
  BankModel? selectedBank;
  String? selectedPaymentMethod;

  int? billId;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BankBloc()..add(const BankEvent.getBanks()),
        ),
        BlocProvider(
          create: (context) => PaymentBloc(),
        ),
        BlocProvider(
          create: (context) => HistoryBloc()
            ..add(HistoryEvent.getByTransactionId(
                transactionId: widget.transactionId)),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocListener<PaymentBloc, PaymentState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              loadedVaBank: (data) {
                vLog(data);
                hideDialog(context);
                context.pushNamed("bank", extra: data);
              },
              loadedQris: (data) {
                vLog(data);
                hideDialog(context);
                context.pushNamed("qris", extra: data);
              },
              error: (error) {
                hideDialog(context);
                UXToast.show(message: error.toString());
              },
            );
          },
          child: Scaffold(
            appBar: AppbarCustom(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.goNamed("home");
                }
              },
              shape: LinearBorder.none,
              title: LocaleKeys.select_payment_title.tr(),
            ),
            body: SingleChildScrollView(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 24),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: AppScreens.width,
                            child: Stack(
                              children: [
                                Image.asset(
                                  Assets.images.logo.path,
                                  height: 24,
                                  width: AppScreens.width * 0.2,
                                ),
                                Center(
                                  child: Text(
                                    LocaleKeys.select_payment_subtitle.tr(),
                                    style: const TextStyle(
                                      fontSize: AppConstants.kFontSizeXL,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
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
                              widget.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.neutralN20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Center(
                            child: Text(
                              LocaleKeys.detail_split_bill_t_amount.tr(),
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                color: AppColors.neutralN20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Center(
                            child: Text(
                              formatCurrencyNonDecimal(widget.amount),
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
                          BlocListener<BankBloc, BankState>(
                            listener: (context, state) {
                              state.maybeWhen(
                                orElse: () {},
                                loading: () {},
                                success: (data) {
                                  setState(() {
                                    listBanks.addAll(data);
                                  });
                                },
                              );
                            },
                            child: Theme(
                              data: ThemeData()
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                tilePadding: const EdgeInsets.only(left: 8),
                                childrenPadding: const EdgeInsets.only(
                                    bottom: 14, right: 4, left: 4),
                                title: const Text("Transfer Bank"),
                                expandedAlignment: Alignment.centerLeft,
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                collapsedBackgroundColor: AppColors.neutralN110,
                                collapsedShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                children: listBanks
                                    .map(
                                      (item) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedBank = item;
                                            selectedPaymentMethod = "bank";
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 8,
                                          ),
                                          margin:
                                              const EdgeInsets.only(bottom: 8),
                                          decoration: BoxDecoration(
                                            color: selectedBank == item
                                                ? AppColors.red
                                                    .withOpacity(0.37)
                                                : AppColors.neutralN130,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Row(
                                            children: [
                                              UICacheNetworkImage(
                                                imageUrl: item.bankImage,
                                                size: const Size(60, 40),
                                                fit: BoxFit.fitWidth,
                                              ),
                                              const SizedBox(
                                                width: 12,
                                              ),
                                              Text(
                                                item.bankName,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.neutralN40,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedBank = null;
                                selectedPaymentMethod = "qris";
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                color: selectedPaymentMethod == "qris"
                                    ? AppColors.red.withOpacity(0.37)
                                    : AppColors.neutralN130,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: [
                                  Assets.images.qris.image(
                                    width: 60,
                                    height: 40,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Text(
                                    "QRIS",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.neutralN40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 42),
                          BlocListener<HistoryBloc, HistoryState>(
                            listener: (context, state) {
                              state.maybeWhen(
                                orElse: () {},
                                loadedBillHistory: (data) {
                                  if (widget.splitId == null) {
                                    billId = data.id;
                                  } else {
                                    billId = widget.splitId;
                                  }
                                  vLog(billId);
                                },
                                error: (error) => vLog(error.toString()),
                              );
                            },
                            child: BtnPrimary(
                              title: LocaleKeys.button_proses.tr(),
                              onTap: () {
                                if (selectedPaymentMethod != null &&
                                    billId != null) {
                                  if (selectedPaymentMethod == "bank") {
                                    context.read<PaymentBloc>().add(
                                        PaymentEvent.payWithBankAccount(
                                            billId: billId!,
                                            bankCode: selectedBank!.bankCode,
                                            type: widget.type));
                                  } else if (selectedPaymentMethod == "qris") {
                                    context.read<PaymentBloc>().add(
                                        PaymentEvent.payWithQris(
                                            billId: billId!,
                                            type: widget.type));
                                  }
                                } else {
                                  UXToast.show(
                                      message:
                                          "Silahkan isi metode pembayaran!");
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: 24),
                          const PoweredWidget(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 64),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
