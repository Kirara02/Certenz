import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/account_billing/account_billing_bloc.dart';
import 'package:certenz/src/blocs/bank/bank_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_account_model.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/qr_account_billing/view/qr_account_billing_page.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/modal_bottom_select_account_bank.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank2.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:certenz/src/widgets/forms/select_bank_button.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountBillingPage extends StatefulWidget {
  const AccountBillingPage({super.key});

  @override
  State<AccountBillingPage> createState() => _AccountBillingPageState();
}

class _AccountBillingPageState extends State<AccountBillingPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController datePaidController = TextEditingController();

  String? period;
  String? choosePaid;
  List<BankModel> listBanks = [];
  BankModel? selectedPaymentMethod;
  BankAccountModel? selectedAccDestination;

  Future _selectAccount(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return const ModalBottomSelectAccountBank();
      },
    );
  }

  Future<FormData?> _handleButton() async {
    if (selectedAccDestination == null) {
      UXToast.show(
          message: LocaleKeys.toast_text_required
              .tr(args: [LocaleKeys.form_title_select_dest.tr()]),
          textColor: AppColors.neutralN140,
          backgroundColor: AppColors.red);
      return null;
    }

    FormData formData = FormData.fromMap({
      "title": titleController.text,
      "amount": removeCurrencyFormat(amountController.text),
      "to_email": toController.text,
      "tenant_period": period,
      "paid_on_date": datePaidController.text,
      "paid_on_time": choosePaid,
      "payment_method": selectedPaymentMethod!.id,
      "account_destination": selectedAccDestination!.bankAccountId,
      "note": noteController.text,
    });

    return formData;
  }

  void _refresh() {
    titleController.clear();
    toController.clear();
    noteController.clear();
    datePaidController.clear();
    amountController.clear();
    selectedAccDestination = null;
    selectedPaymentMethod = null;
  }

  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    noteController.dispose();
    datePaidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BankBloc()..add(const BankEvent.getBanks()),
        ),
        BlocProvider(
          create: (context) => AccountBillingBloc(),
        )
      ],
      child: Builder(builder: (context) {
        return BlocListener<AccountBillingBloc, AccountBillingState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              success: (data) {
                hideDialog(context);
                _refresh();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QRAccountBillingPage(data: data),
                    ));
              },
              error: (error) {
                hideDialog(context);
                error.maybeWhen(
                  orElse: () {},
                  unauthorisedRequest: (reason) =>
                      UXToast.show(message: reason),
                  unprocessableEntity: (reasons) {
                    String errorMessage = reasons?.message ?? '';
                    List<dynamic> errorMessages = reasons?.errors?.values
                            .map((valueList) =>
                                valueList.isNotEmpty ? valueList[0] : '')
                            .toList() ??
                        [];

                    String fullErrorMessage =
                        '$errorMessage ${errorMessages[0]}';

                    UXToast.show(message: fullErrorMessage);
                  },
                  badRequest: (reason) => eLog(reason),
                  notFound: (reason) => UXToast.show(message: reason),
                );
              },
            );
          },
          child: SafeArea(
            child: Scaffold(
              appBar: AppbarCustom(
                onPressed: () => Navigator.pop(context),
                title: LocaleKeys.account_billing_title.tr(),
              ),
              body: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.form_title_title.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      FieldCustom(
                        controller: titleController,
                        hintText: LocaleKeys.form_hint_text_title.tr(),
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_title_title.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 18),
                      Text(
                        LocaleKeys.form_title_amount.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      FieldCustom(
                        controller: amountController,
                        format: "currency",
                        hintText: LocaleKeys.form_hint_text_amount.tr(),
                        maxLines: 1,
                        maxLength: 20,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeX,
                          color: AppColors.neutralN40,
                        ),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_title_amount.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 18),
                      Text(
                        LocaleKeys.form_title_to.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      FieldCustom(
                        controller: toController,
                        hintText: LocaleKeys.form_hint_text_to_email.tr(),
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_title_to.tr(),
                            ]);
                          }
                          if (!p0.isValidEmail) {
                            return LocaleKeys.validation_invalid_email_address
                                .tr();
                          }
                          return null;
                        },
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        LocaleKeys.form_title_tenant_period.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DropdownTextfield(
                        selectedItem: period,
                        items: DummyService.period,
                        hintText: "Period",
                        onChanged: (p0) {
                          setState(() {
                            period = p0;
                          });
                          dLog(period);
                        },
                        validator: (p0) {
                          if (p0 == null) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_title_tenant_period.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "Paid on date ",
                        style: TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 80,
                            child: FieldCustom(
                              controller: datePaidController,
                              hintText: "Enter Date",
                              maxLines: 1,
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                color: AppColors.neutralN40,
                              ),
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return LocaleKeys
                                      .validation_input_is_not_empty
                                      .tr(args: [
                                    LocaleKeys.form_hint_text_paid_date.tr(),
                                  ]);
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 25),
                          Expanded(
                            child: DropdownTextfield(
                              selectedItem: choosePaid,
                              items: DummyService.onPaid,
                              hintText:
                                  LocaleKeys.form_hint_text_paid_choose.tr(),
                              onChanged: (p0) {
                                setState(() {
                                  choosePaid = p0;
                                });
                              },
                              validator: (p0) {
                                if (p0 == null) {
                                  return LocaleKeys
                                      .validation_input_is_not_empty
                                      .tr(args: [
                                    LocaleKeys.form_hint_text_paid_choose.tr(),
                                  ]);
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      Text(
                        LocaleKeys.form_title_select_payment.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 18),
                      BlocProvider(
                        create: (context) => context.read<BankBloc>(),
                        child: BlocListener<BankBloc, BankState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              success: (data) {
                                setState(() {
                                  listBanks.addAll(data);
                                });
                              },
                            );
                          },
                          child: DropdownBank2(
                            selectedItem: selectedPaymentMethod?.bankName,
                            hintText:
                                LocaleKeys.form_hint_text_select_bank.tr(),
                            prefixIcon: null,
                            listBank: listBanks,
                            onBankSelected: (bank) {
                              setState(() {
                                selectedPaymentMethod = bank;
                              });
                              vLog(selectedPaymentMethod);
                            },
                            validator: (p0) {
                              if (p0 == null) {
                                return LocaleKeys.validation_input_is_not_empty
                                    .tr(args: [
                                  LocaleKeys.form_title_select_payment.tr(),
                                ]);
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        LocaleKeys.form_title_select_dest.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 18),
                      SelectBankButton(
                        hintText: LocaleKeys.form_hint_text_select_account.tr(),
                        bankAccountModel: selectedAccDestination,
                        onTap: () => _selectAccount(context).then((value) {
                          if (value != null) {
                            setState(() {
                              selectedAccDestination = value;
                            });
                          }
                        }),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "Note :",
                        style: TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      FieldCustom(
                        controller: noteController,
                        hintText: LocaleKeys.form_hint_text_note.tr(),
                        maxLines: 1,
                        maxLength: 20,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          color: AppColors.neutralN40,
                        ),
                      ),
                      const SizedBox(height: 18),
                      const PoweredWidget(
                        isCenter: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BtnPrimary(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            _handleButton().then((value) {
                              if (value != null) {
                                context.read<AccountBillingBloc>().add(
                                    AccountBillingEvent.create(
                                        formData: value));
                              }
                            });
                          }
                        },
                        title: LocaleKeys.button_next.tr(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
