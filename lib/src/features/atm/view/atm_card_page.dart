import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/bank/bank_bloc.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/month_year_picker.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank2.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AtmCardPage extends StatefulWidget {
  const AtmCardPage({super.key});

  @override
  State<AtmCardPage> createState() => _AtmCardPageState();
}

class _AtmCardPageState extends State<AtmCardPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController nomorController = TextEditingController();
  TextEditingController norekController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  List<BankModel> listBanks = [];
  BankModel? selectedBank;

  Future _deliveryDate({
    bool passDate = true,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: MonthYearPicker(
            enablePastDates: passDate,
          ),
        );
      },
    );
  }

  Future<FormData?> _handleSubmit() async {
    FormData formData = FormData.fromMap({
      "bank_id": selectedBank!.id,
      "account_number": norekController.text,
      "account_name": nameController.text,
      "card_number": removeSpaces(nomorController.text),
      "expired": expDateController.text,
      "cvv": cvvController.text,
    });

    return formData;
  }

  @override
  void dispose() {
    nameController.dispose();
    nomorController.dispose();
    norekController.dispose();
    expDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  void _refresh() {
    nameController.clear();
    nomorController.clear();
    norekController.clear();
    expDateController.clear();
    cvvController.clear();
    setState(() {
      selectedBank = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CardAccountBloc(),
        ),
        BlocProvider(
          create: (context) => BankBloc()..add(const BankEvent.getBanks()),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocListener<CardAccountBloc, CardAccountState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              success: (data) {
                hideDialog(context);
                _refresh();
                UXToast.show(
                    message:
                        "successful in adding card account, Please refresh your home page!");
                if (context.mounted) {
                  context.goNamed("home");
                }

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const StartVerifyPage(),
                //     ));
              },
            );
          },
          child: SafeArea(
            child: Scaffold(
              body: WillPopScope(
                onWillPop: () async {
                  GoRouter.of(context).pop();
                  return false;
                },
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {
                                context.pop();
                              },
                              icon: const Icon(Icons.arrow_back),
                            ),
                            Center(
                              child: Image.asset(
                                Assets.images.logo.path,
                                width: AppScreens.width * 0.25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: Text(
                          LocaleKeys.atm_page_title.tr(),
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeL,
                            fontWeight: FontWeight.bold,
                            color: AppColors.neutralN30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 24),
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
                            selectedItem: selectedBank?.bankName,
                            label: LocaleKeys.form_hint_text_select_bank.tr(),
                            hintText:
                                LocaleKeys.form_hint_text_select_bank.tr(),
                            prefixIcon: null,
                            listBank: listBanks, // Pass the list of banks
                            onBankSelected: (bank) {
                              setState(() {
                                selectedBank = bank;
                              });
                              vLog(selectedBank);
                            },
                            validator: (p0) {
                              if (p0 == null) {
                                return LocaleKeys.validation_input_is_not_empty
                                    .tr(args: [
                                  LocaleKeys.form_hint_text_select_bank.tr(),
                                ]);
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.atm_page_card_detail.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                              color: AppColors.neutralN50,
                            ),
                          ),
                          Image.asset(
                            Assets.images.detailsBank.path,
                            height: 38,
                            width: AppScreens.width * 0.30,
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      TextfieldCustom(
                        controller: nameController,
                        label: LocaleKeys.form_hint_text_card_name.tr(),
                        maxLength: 19,
                        hintText: LocaleKeys.form_hint_text_card_name.tr(),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_card_name.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextfieldCustom(
                        controller: nomorController,
                        label: LocaleKeys.form_hint_text_card_number.tr(),
                        maxLength: 19,
                        keyboardType: TextInputType.number,
                        hintText: LocaleKeys.form_hint_text_card_number.tr(),
                        format: "cardNumber",
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_card_number.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextfieldCustom(
                        controller: norekController,
                        label: LocaleKeys.form_hint_text_account_number.tr(),
                        maxLength: 20,
                        keyboardType: TextInputType.number,
                        hintText: LocaleKeys.form_hint_text_account_number.tr(),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_account_number.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextfieldCustom(
                              controller: expDateController,
                              label: LocaleKeys.form_hint_text_exp.tr(),
                              hintText: LocaleKeys.form_hint_text_exp.tr(),
                              readOnly: true,
                              maxLength: 5,
                              suffixIcon: const Icon(Icons.calendar_month),
                              onTap: () => _deliveryDate().then((value) {
                                if (value != null) {
                                  expDateController.text = value;
                                }
                              }),
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return LocaleKeys
                                      .validation_input_is_not_empty
                                      .tr(args: [
                                    LocaleKeys.form_hint_text_exp.tr(),
                                  ]);
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          SizedBox(
                            width: AppScreens.width * 0.20,
                            child: TextfieldCustom(
                              controller: cvvController,
                              label: LocaleKeys.form_hint_text_cvv.tr(),
                              hintText: LocaleKeys.form_hint_text_cvv.tr(),
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return LocaleKeys
                                      .validation_input_is_not_empty
                                      .tr(args: [
                                    LocaleKeys.form_hint_text_cvv.tr(),
                                  ]);
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      BtnPrimary(
                        title: LocaleKeys.button_save.tr(),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _handleSubmit().then((value) {
                              if (value != null) {
                                context.read<CardAccountBloc>().add(
                                    CardAccountEvent.addCard(formData: value));
                              }
                            });
                          }
                        },
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const PoweredWidget(),
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
