import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/dismiss_keyboard.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/auth/section_auth.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: SafeArea(
        child: Builder(builder: (context) {
          return BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loading: () =>
                    showLoadingDialog(context, "Logging in, please wait..."),
                isAuthenticated: (data) {
                  context.go("/home");
                },
                error: (error) {
                  hideDialog(context);
                  error.maybeWhen(
                    orElse: () {},
                    unauthorisedRequest: (reason) {
                      UXToast.show(message: reason);
                    },
                  );
                },
              );
            },
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.white,
                resizeToAvoidBottomInset: false,
                body: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 32, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.login_page_title.tr(),
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeXXL,
                                fontWeight: FontWeight.w500,
                                color: AppColors.neutralN20,
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextfieldCustom(
                              controller: emailController,
                              label: LocaleKeys.form_title_email.tr(),
                              keyboardType: TextInputType.emailAddress,
                              hintText:
                                  LocaleKeys.form_hint_text_enter_email.tr(),
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
                            TextfieldCustom(
                              controller: passwordController,
                              label: LocaleKeys.form_title_password.tr(),
                              obscureText: true,
                              hintText:
                                  LocaleKeys.form_hint_text_enter_password.tr(),
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return LocaleKeys
                                      .validation_input_is_not_empty
                                      .tr(args: [
                                    LocaleKeys.form_title_password.tr(),
                                  ]);
                                }

                                return null;
                              },
                            ),
                            const SizedBox(height: 8),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  LocaleKeys.login_page_forgot_password.tr(),
                                  style: const TextStyle(
                                    fontSize: AppConstants.kFontSizeS,
                                    color: AppColors.orange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SectionAuth(
                        btnTap: () async {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(AuthEvent.login(
                                username: emailController.text,
                                password: passwordController.text));
                          }
                          hideKeyboard(context);
                        },
                        txtTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        btnText: LocaleKeys.button_sign_in.tr(),
                        txtText: LocaleKeys.text_no_have_account.tr(),
                        txtText2: LocaleKeys.button_sign_up.tr(),
                        txtText3: LocaleKeys.text_login_with.tr(),
                      ),
                      const Spacer(),
                      const PoweredWidget(),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
