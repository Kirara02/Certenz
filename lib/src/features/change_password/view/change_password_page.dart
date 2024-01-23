import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController currentPass = TextEditingController(text: "");
  TextEditingController newPass = TextEditingController(text: "");
  TextEditingController confirmPass = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: Builder(
        builder: (context) {
          return BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loading: () => showLoadingDialog(context),
                successMessage: (response) {
                  hideDialog(context);
                  UXToast.show(message: response.message);
                  Navigator.pop(context);
                },
                error: (error) {
                  hideDialog(context);
                  error.maybeWhen(
                    orElse: () {},
                    unprocessableEntity: (reasons) {
                      String errorMessage = reasons?.message ?? '';
                      List<dynamic> errorMessages = reasons?.errors?.values
                              .map((valueList) =>
                                  valueList.isNotEmpty ? valueList[0] : '')
                              .toList() ??
                          [];

                      String fullErrorMessage =
                          '$errorMessage ${errorMessages[0]}';

                      UXToast.show(
                          message: fullErrorMessage,
                          backgroundColor: AppColors.red,
                          textColor: AppColors.neutralN140);
                    },
                  );
                },
              );
            },
            child: Scaffold(
              appBar: AppbarCustom(
                onPressed: () => Navigator.of(context).pop(),
                title: LocaleKeys.change_password_title.tr(),
              ),
              body: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextfieldCustom(
                        controller: currentPass,
                        hintText: LocaleKeys.form_hint_text_last_password.tr(),
                        label: LocaleKeys.form_hint_text_last_password.tr(),
                        obscureText: true,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_last_password.tr(),
                            ]);
                          }
                          if (p0.isPasswordLength) {
                            return LocaleKeys.validation_invalid_password.tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      TextfieldCustom(
                        controller: newPass,
                        hintText: LocaleKeys.form_hint_text_new_password.tr(),
                        label: LocaleKeys.form_hint_text_new_password.tr(),
                        obscureText: true,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_new_password.tr(),
                            ]);
                          }
                          if (p0.isPasswordLength) {
                            return LocaleKeys.validation_invalid_password.tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      TextfieldCustom(
                        controller: confirmPass,
                        hintText:
                            LocaleKeys.form_hint_text_confirm_password.tr(),
                        label: LocaleKeys.form_hint_text_confirm_password.tr(),
                        obscureText: true,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_confirm_password.tr(),
                            ]);
                          }
                          if (p0.isPasswordLength) {
                            return LocaleKeys.validation_invalid_password.tr();
                          }
                          if (p0 != newPass.text) {
                            return LocaleKeys.validation_passwords_do_not_match
                                .tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      BtnPrimary(
                        title: LocaleKeys.button_save.tr(),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<UserBloc>().add(
                                UserEvent.changePassword(
                                    currentPass: currentPass.text,
                                    newPass: newPass.text,
                                    confirmPass: confirmPass.text));
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    currentPass.dispose();
    newPass.dispose();
    confirmPass.dispose();
    super.dispose();
  }
}
