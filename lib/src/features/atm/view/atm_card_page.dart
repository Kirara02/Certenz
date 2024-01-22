import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/bank/bank_bloc.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/features/face_verify/view/start_verify_page.dart';
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
import 'package:fluttertoast/fluttertoast.dart';

class AtmCardPage extends StatefulWidget {
  const AtmCardPage({super.key});

  @override
  State<AtmCardPage> createState() => _AtmCardPageState();
}

class _AtmCardPageState extends State<AtmCardPage> {
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

  Future _toast(String? message, [Color color = AppColors.red]) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: color,
        toastGravity: ToastGravity.BOTTOM,
        textColor: AppColors.neutralN140);
  }

  Future<FormData?> _handleSubmit() async {
    if (selectedBank == null) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": "Bank"},
      ));
      return null;
    } else if (nameController.text.isEmpty) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": LocaleKeys.form_hint_text_card_name.tr()},
      ));
      return null;
    } else if (nomorController.text.isEmpty) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": LocaleKeys.form_hint_text_card_number.tr()},
      ));
      return null;
    } else if (norekController.text.isEmpty) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": LocaleKeys.form_hint_text_account_number.tr()},
      ));
      return null;
    } else if (expDateController.text.isEmpty) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": LocaleKeys.form_hint_text_exp.tr()},
      ));
      return null;
    } else if (cvvController.text.isEmpty) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": LocaleKeys.form_hint_text_cvv.tr()},
      ));
      return null;
    }

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
    selectedBank = null;
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
                  Navigator.pop(context);
                  return false;
                },
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
                              Navigator.pop(context);
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
                          hintText: LocaleKeys.form_hint_text_select_bank.tr(),
                          prefixIcon: null,
                          listBank: listBanks, // Pass the list of banks
                          onBankSelected: (bank) {
                            setState(() {
                              selectedBank = bank;
                            });
                            vLog(selectedBank);
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
                      maxLength: 19,
                      hintText: LocaleKeys.form_hint_text_card_name.tr(),
                    ),
                    const SizedBox(height: 10),
                    TextfieldCustom(
                      controller: nomorController,
                      maxLength: 19,
                      keyboardType: TextInputType.number,
                      hintText: LocaleKeys.form_hint_text_card_number.tr(),
                      format: "cardNumber",
                    ),
                    const SizedBox(height: 10),
                    TextfieldCustom(
                      controller: norekController,
                      maxLength: 20,
                      keyboardType: TextInputType.number,
                      hintText: LocaleKeys.form_hint_text_account_number.tr(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextfieldCustom(
                            controller: expDateController,
                            hintText: LocaleKeys.form_hint_text_exp.tr(),
                            readOnly: true,
                            suffixIcon: const Icon(Icons.calendar_month),
                            onTap: () => _deliveryDate().then((value) {
                              if (value != null) {
                                expDateController.text = value;
                              }
                            }),
                          ),
                        ),
                        const SizedBox(width: 16),
                        SizedBox(
                          width: AppScreens.width * 0.20,
                          child: TextfieldCustom(
                            controller: cvvController,
                            hintText: LocaleKeys.form_hint_text_cvv.tr(),
                            keyboardType: TextInputType.number,
                            maxLength: 3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    BtnPrimary(
                      title: LocaleKeys.button_save.tr(),
                      onTap: () {
                        _handleSubmit().then((value) {
                          if (value != null) {
                            context
                                .read<CardAccountBloc>()
                                .add(CardAccountEvent.addCard(formData: value));
                          }
                        });
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
        );
      }),
    );
  }
}
