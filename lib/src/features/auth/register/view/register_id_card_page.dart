import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/dialogs/dialog_custom.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

import 'register_success_page.dart';

class RegisterIdCardPage extends StatefulWidget {
  const RegisterIdCardPage({super.key});

  @override
  State<RegisterIdCardPage> createState() => _RegisterIdCardPageState();
}

class _RegisterIdCardPageState extends State<RegisterIdCardPage> {
  TextEditingController nikController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController rtController = TextEditingController();
  TextEditingController rwController = TextEditingController();
  TextEditingController villageController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController occupationController = TextEditingController();

  String? religion;
  String? maritalStatus;
  String? nationality;

  _dialog(BuildContext context) {
    return DialogCustom(
      width: .7,
      height: .9,
      title: LocaleKeys.privacy_terms_title.tr(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.privacy_terms_subtitle.tr(),
            style: GoogleFonts.manrope(
              fontSize: AppConstants.kFontSizeS,
              color: AppColors.neutralN30,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.privacy_terms_description.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: AppConstants.kFontSizeS,
              color: AppColors.neutralN20,
            ),
          ),
          Expanded(
            child: Markdown(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              styleSheet: MarkdownStyleSheet(
                  p: const TextStyle(
                    color: AppColors.neutralN30,
                  ),
                  listBullet: const TextStyle(
                    color: AppColors.neutralN30,
                  )),
              data: DummyService.privacy.map((e) => "- $e").join("\n"),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  LocaleKeys.button_cancel.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.orange,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.30,
                child: BtnPrimary(
                  onTap: () {
                    Navigator.pop(context);
                    if (context.mounted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterSuccessPage(),
                        ),
                      );
                    }
                  },
                  title: LocaleKeys.button_agree.tr(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nikController.dispose();
    addressController.dispose();
    rtController.dispose();
    rwController.dispose();
    villageController.dispose();
    districtController.dispose();
    occupationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  Text(
                    LocaleKeys.register_page_title.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeXXL,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutralN20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        LocaleKeys.register_page_input_id_title.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kIconsXS,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        LocaleKeys.register_page_input_id_subtitle.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kIconsXS,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextfieldCustom(
                      controller: nikController,
                      hintText: LocaleKeys.form_hint_text_nik.tr(),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 14),
                    TextfieldCustom(
                      controller: addressController,
                      hintText: LocaleKeys.form_hint_text_address.tr(),
                      keyboardType: TextInputType.multiline,
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          child: TextfieldCustom(
                            controller: rtController,
                            hintText: LocaleKeys.form_hint_text_rt.tr(),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextfieldCustom(
                            controller: rwController,
                            hintText: LocaleKeys.form_hint_text_rw.tr(),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextfieldCustom(
                      controller: villageController,
                      hintText: LocaleKeys.form_hint_text_village.tr(),
                    ),
                    const SizedBox(height: 14),
                    TextfieldCustom(
                      controller: districtController,
                      hintText: LocaleKeys.form_hint_text_sub_district.tr(),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    DropdownTextfield(
                      onChanged: (value) {
                        setState(() {
                          religion = value;
                        });
                        vLog(religion);
                      },
                      items: DummyService.listReligions,
                      hintText: LocaleKeys.form_hint_text_religion.tr(),
                      isRegister: true,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    DropdownTextfield(
                      onChanged: (value) {
                        setState(() {
                          maritalStatus = value;
                        });
                        vLog(maritalStatus);
                      },
                      items: DummyService.listMaritalStatus,
                      hintText: LocaleKeys.form_hint_text_marital_status.tr(),
                      isRegister: true,
                    ),
                    const SizedBox(height: 14),
                    TextfieldCustom(
                      controller: occupationController,
                      hintText: LocaleKeys.form_hint_text_occupation.tr(),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    DropdownTextfield(
                      onChanged: (value) {
                        setState(() {
                          nationality = value;
                        });
                        vLog(nationality);
                      },
                      items: DummyService.listNationality,
                      hintText: LocaleKeys.form_hint_text_nationality.tr(),
                      isRegister: true,
                    ),
                    const SizedBox(height: 32),
                    BtnPrimary(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return _dialog(context);
                          },
                        );
                      },
                      title: LocaleKeys.button_finish.tr(),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
