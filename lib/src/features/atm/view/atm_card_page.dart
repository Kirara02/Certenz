import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/cubits/text_field_cubit.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/auth/register/view/register_page.dart';
import 'package:certenz/src/features/auth/register/view/register_success_page.dart';
import 'package:certenz/src/features/face_verify/view/start_verify_page.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank2.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AtmCardPage extends StatefulWidget {
  const AtmCardPage({super.key});

  @override
  State<AtmCardPage> createState() => _AtmCardPageState();
}

class _AtmCardPageState extends State<AtmCardPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nomorController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  BankModel? selectedBank;

  @override
  void dispose() {
    nameController.dispose();
    nomorController.dispose();
    expDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              DropdownBank2(
                selectedItem: selectedBank?.name,
                hintText: LocaleKeys.form_hint_text_select_bank.tr(),
                prefixIcon: null,
                listBank: DummyService.listBank, // Pass the list of banks
                onBankSelected: (bank) {
                  setState(() {
                    selectedBank = bank;
                  });
                  vLog(selectedBank);
                },
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
                format: "cardNumber",
              ),
              const SizedBox(height: 10),
              TextfieldCustom(
                controller: nomorController,
                maxLength: 19,
                keyboardType: TextInputType.number,
                hintText: LocaleKeys.form_hint_text_card_number.tr(),
                format: "cardNumber",
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
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: AppScreens.width * 0.20,
                    child: TextfieldCustom(
                      controller: cvvController,
                      hintText: LocaleKeys.form_hint_text_cvv.tr(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              BtnPrimary(
                title: LocaleKeys.button_save.tr(),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartVerifyPage(),
                      ));
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
    );
  }
}
