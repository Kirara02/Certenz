import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/auth/register/view/register_page.dart';
import 'package:certenz/src/utils/dismiss_keyboard.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/auth/section_auth.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppRoot(),
                    ),
                    (route) => false,
                  );
                },
                error: (error) {
                  error.maybeWhen(
                    orElse: () {},
                    unauthorisedRequest: (reason) {
                      dLog(reason);
                    },
                  );
                },
              );
            },
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.white,
                resizeToAvoidBottomInset: false,
                body: Column(
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
                            hintText:
                                LocaleKeys.form_hint_text_enter_email.tr(),
                          ),
                          const SizedBox(height: 14),
                          TextfieldCustom(
                            controller: passwordController,
                            obscureText: true,
                            hintText:
                                LocaleKeys.form_hint_text_enter_password.tr(),
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                LocaleKeys.login_page_forgot_pin.tr(),
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
                        if (emailController.text.isEmpty) {
                          UXToast.show(
                            message: 'Email is required',
                            backgroundColor: AppColors.red,
                            textColor: AppColors.neutralN140,
                          );
                        } else if (passwordController.text.isEmpty) {
                          UXToast.show(
                            message: 'PIN is required',
                            backgroundColor: AppColors.red,
                            textColor: AppColors.neutralN140,
                          );
                        } else {
                          context.read<AuthBloc>().add(AuthEvent.login(
                              username: emailController.text,
                              password: passwordController.text));
                          hideKeyboard(context);
                        }
                      },
                      txtTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      btnText: LocaleKeys.button_sign_in.tr(),
                      txtText: LocaleKeys.text_no_have_account.tr(),
                      txtText2: LocaleKeys.button_register.tr(),
                      txtText3: LocaleKeys.text_login_with.tr(),
                    ),
                    const Spacer(),
                    const PoweredWidget(),
                    const SizedBox(height: 30),
                  ],
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
