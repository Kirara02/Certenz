import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/auth/login/view/login_page.dart';
import 'package:certenz/src/features/auth/register/bloc/register_bloc.dart';
import 'package:certenz/src/features/auth/register/view/register_success_page.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          child: DatePicker(
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
    if (nameController.text.isEmpty) {
      _toast("Name is required");
      return null;
    } else if (usernameController.text.isEmpty) {
      _toast("Username is required");
      return null;
    } else if (passwordController.text.isEmpty) {
      _toast("Password is required");
      return null;
    } else if (passwordConfirmController.text.isEmpty) {
      _toast("Password Confirmation is required");
      return null;
    } else if (pinController.text.isEmpty) {
      _toast("PIN is required");
      return null;
    } else if (pinConfirmController.text.isEmpty) {
      _toast("PIN Confirmation is required");
      return null;
    } else if (birthController.text.isEmpty) {
      _toast("Birthday is required");
      return null;
    } else if (gender == null) {
      _toast("Gender is required");
      return null;
    } else if (emailController.text.isEmpty) {
      _toast("Email is required");
      return null;
    } else if (phoneController.text.isEmpty) {
      _toast("Phone is required");
      return null;
    } else if (location == null) {
      _toast("Location   is required");
      return null;
    }

    if (gender == "Laki-laki") {
      gender = "Male";
    } else if (gender == "Perempuan") {
      gender = "Female";
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
      create: (context) => RegisterBloc(),
      child: Builder(builder: (context) {
        return BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (data) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterSuccessPage(),
                    ));
              },
              error: (error) {
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
          child: SafeArea(
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
                    const HeaderRegister(),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          TextfieldCustom(
                            controller: nameController,
                            hintText: LocaleKeys.form_hint_text_name.tr(),
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: usernameController,
                            hintText: LocaleKeys.form_hint_text_username.tr(),
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: passwordController,
                            hintText:
                                LocaleKeys.form_hint_text_create_password.tr(),
                            obscureText: true,
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: passwordConfirmController,
                            hintText:
                                LocaleKeys.form_hint_text_confirm_password.tr(),
                            obscureText: true,
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: pinController,
                            hintText: LocaleKeys.form_hint_text_create_pin.tr(),
                            keyboardType: TextInputType.number,
                            obscureText: true,
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: pinConfirmController,
                            hintText:
                                LocaleKeys.form_hint_text_confirm_pin.tr(),
                            keyboardType: TextInputType.number,
                            obscureText: true,
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: birthController,
                            hintText: LocaleKeys.form_hint_text_birthday.tr(),
                            suffixIcon: const Icon(
                              Icons.calendar_month,
                            ),
                            readOnly: true,
                            onTap: () =>
                                _deliveryDate(passDate: true).then((value) {
                              if (value != null) {
                                birthController.text = value;
                              }
                            }),
                          ),
                          const SizedBox(height: 14),
                          DropdownTextfield(
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                              vLog(gender);
                            },
                            selectedItem: gender,
                            isRegister: true,
                            items: DummyService.gender,
                            hintText: LocaleKeys.form_hint_text_gender.tr(),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: DropdownTextfield(
                                  items: DummyService.codePhone,
                                  selectedItem: "+62",
                                ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: TextfieldCustom(
                                  controller: phoneController,
                                  hintText: LocaleKeys
                                      .form_hint_text_phone_number
                                      .tr(),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: emailController,
                            hintText: LocaleKeys.form_hint_text_email.tr(),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 14),
                          DropdownTextfield(
                            onChanged: (value) {
                              setState(() {
                                location = value;
                              });
                              vLog(location);
                            },
                            items: DummyService.location,
                            hintText: LocaleKeys.form_hint_text_location.tr(),
                            isRegister: true,
                          ),
                          const SizedBox(height: 32),
                          BtnPrimary(
                            onTap: () => _sendData().then((value) {
                              if (value != null) {
                                context
                                    .read<RegisterBloc>()
                                    .add(RegisterEvent.register(data: value));
                              }
                            }),
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
