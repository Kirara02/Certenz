import 'dart:developer';

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/auth/login/view/login_page.dart';
import 'package:certenz/src/utils/birthday_picker.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/gender_converter.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController pinConfirmController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String? gender;
  String? location;

  late String date;

  Future _deliveryDate({bool passDate = false}) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: SelectDatePicker(
            passDate: passDate,
            tanggal_awal: date,
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  }

  Future _toast(String? message, [Color color = AppColors.red]) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: color,
        toastGravity: ToastGravity.BOTTOM,
        textColor: AppColors.neutralN140);
  }

  Future<FormData?> _sendData() async {
    if (context.locale.languageCode == 'id') {
      gender = convertGenderToEnglish(gender!);
    }

    FormData data = FormData.fromMap({
      "name": nameController.text,
      "email": emailController.text,
      "username": usernameController.text,
      "telp": phoneController.text,
      "password": passwordController.text,
      "password_confirmation": passwordConfirmController.text,
      "pin": pinController.text,
      "pin_confirmation": pinConfirmController.text,
      "birthday": birthController.text,
      "gender": gender,
      "location": location,
    });

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Builder(builder: (context) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              successRegister: (data) {
                context.pushNamed("register-success");
              },
              error: (error) {
                hideDialog(context);
                error.maybeWhen(
                  orElse: () {},
                  notFound: (reason) => _toast(reason),
                  unprocessableEntity: (reasons) {
                    String errorMessage = reasons?.message ?? '';
                    List<dynamic> errorMessages = reasons?.errors?.values
                            .map((valueList) =>
                                valueList.isNotEmpty ? valueList[0] : '')
                            .toList() ??
                        [];

                    String fullErrorMessage =
                        '$errorMessage ${errorMessages[0]}';

                    _toast(fullErrorMessage);
                  },
                );
              },
            );
          },
          child: WillPopScope(
            onWillPop: () async {
              GoRouter.of(context).pop();
              return true;
            },
            child: SafeArea(
              child: Scaffold(
                body: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => context.pop(),
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
                        const HeaderRegister(),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              TextfieldCustom(
                                controller: nameController,
                                label: LocaleKeys.form_title_name.tr(),
                                hintText: LocaleKeys.form_hint_text_name.tr(),
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_hint_text_name.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: usernameController,
                                label: LocaleKeys.form_title_username.tr(),
                                hintText:
                                    LocaleKeys.form_hint_text_username.tr(),
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_hint_text_username.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: passwordController,
                                label: LocaleKeys.form_title_password.tr(),
                                hintText: LocaleKeys
                                    .form_hint_text_create_password
                                    .tr(),
                                obscureText: true,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_password.tr(),
                                    ]);
                                  }
                                  if (p0.isPasswordLength) {
                                    return LocaleKeys
                                        .validation_invalid_password
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: passwordConfirmController,
                                label:
                                    LocaleKeys.form_title_confirm_password.tr(),
                                hintText: LocaleKeys
                                    .form_hint_text_confirm_password
                                    .tr(),
                                obscureText: true,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_confirm_password
                                          .tr(),
                                    ]);
                                  }
                                  if (p0.isPinLength) {
                                    return LocaleKeys
                                        .validation_invalid_password
                                        .tr();
                                  }
                                  if (p0 != passwordController.text) {
                                    return LocaleKeys
                                        .validation_passwords_do_not_match
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: pinController,
                                label: LocaleKeys.form_title_pin.tr(),
                                hintText:
                                    LocaleKeys.form_hint_text_create_pin.tr(),
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                maxLength: 6,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_pin.tr(),
                                    ]);
                                  }
                                  if (!p0.isPinLength) {
                                    return LocaleKeys.validation_invalid_pin
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: pinConfirmController,
                                label: LocaleKeys.form_title_confirm_pin.tr(),
                                hintText:
                                    LocaleKeys.form_hint_text_confirm_pin.tr(),
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                maxLength: 6,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_confirm_pin.tr(),
                                    ]);
                                  }
                                  if (!p0.isPinLength) {
                                    return LocaleKeys.validation_invalid_pin
                                        .tr();
                                  }
                                  if (p0 != pinController.text) {
                                    return LocaleKeys
                                        .validation_pin_do_not_match
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: birthController,
                                label: LocaleKeys.form_title_birthday.tr(),
                                hintText:
                                    LocaleKeys.form_hint_text_birthday.tr(),
                                suffixIcon: const Icon(
                                  Icons.calendar_month,
                                ),
                                readOnly: true,
                                onTap: () => selectBirthDateBottom(context)
                                    .then((value) {
                                  if (value != null) {
                                    dLog(value);
                                    birthController.text =
                                        DateFormat("yyyy-MM-dd").format(value);
                                  }
                                }),
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_birthday.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              DropdownTextfield(
                                onChanged: (value) {
                                  setState(() {
                                    gender = value;
                                  });
                                },
                                label: LocaleKeys.form_title_gender.tr(),
                                selectedItem: gender,
                                isRegister: true,
                                items: DummyService.gender,
                                hintText: LocaleKeys.form_hint_text_gender.tr(),
                                validator: (p0) {
                                  if (p0 == null) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_gender.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: phoneController,
                                label: LocaleKeys.form_title_phone_number.tr(),
                                hintText:
                                    LocaleKeys.form_hint_text_phone_number.tr(),
                                keyboardType: TextInputType.phone,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_phone_number.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              TextfieldCustom(
                                controller: emailController,
                                label: LocaleKeys.form_title_email.tr(),
                                hintText: LocaleKeys.form_hint_text_email.tr(),
                                keyboardType: TextInputType.emailAddress,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_email.tr(),
                                    ]);
                                  }
                                  if (!p0.isValidEmail) {
                                    return LocaleKeys
                                        .validation_invalid_email_address
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 14),
                              DropdownTextfield(
                                onChanged: (value) {
                                  setState(() {
                                    location = value;
                                  });
                                },
                                showSearchBox: true,
                                label: LocaleKeys.form_title_location.tr(),
                                items: DummyService.provinces,
                                hintText:
                                    LocaleKeys.form_hint_text_location.tr(),
                                isRegister: true,
                                validator: (p0) {
                                  if (p0 == null) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_title_location.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 32),
                              BtnPrimary(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    _sendData().then((value) {
                                      if (value != null) {
                                        context.read<AuthBloc>().add(
                                            AuthEvent.register(data: value));
                                      }
                                    });
                                  }
                                },
                                title: LocaleKeys.button_next.tr(),
                              ),
                              const SizedBox(height: 32),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    birthController.dispose();
    pinConfirmController.dispose();
    pinController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}

class HeaderRegister extends StatelessWidget {
  const HeaderRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: "Already have one? ",
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXS,
                color: AppColors.neutralN20,
              ),
              children: [
                TextSpan(
                  text: "Log In",
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeXS,
                    fontWeight: FontWeight.bold,
                    color: AppColors.orange,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Center(
                child: Text(
                  LocaleKeys.text_register_with.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeXS,
                    color: AppColors.neutralN20,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: AppColors.neutralN130,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        Assets.icons.fb.path,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: AppColors.neutralN130,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        Assets.icons.google.path,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: AppColors.neutralN130,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.apple,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
