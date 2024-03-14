import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/friend_entry/field_entry_model.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SplitBillWith extends StatelessWidget {
  final FriendEntry friendEntry;
  final VoidCallback? onDelete;
  const SplitBillWith({
    super.key,
    required this.friendEntry,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.neutralN140,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.form_title_email_friend.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN40,
                  ),
                ),
                const SizedBox(height: 8),
                TextfieldCustom(
                  controller: friendEntry.emailController,
                  hintText: LocaleKeys.form_hint_text_email2.tr(),
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeM,
                    color: AppColors.neutralN40,
                  ),
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return LocaleKeys.validation_input_is_not_empty.tr(args: [
                        LocaleKeys.form_title_email.tr(),
                      ]);
                    }
                    if (!p0.isValidEmail) {
                      return LocaleKeys.validation_invalid_email_address.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 18),
                Text(
                  LocaleKeys.form_title_split_amount.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN40,
                  ),
                ),
                const SizedBox(height: 8),
                TextfieldCustom(
                  controller: friendEntry.splitAmountController,
                  hintText: LocaleKeys.form_hint_text_amount.tr(),
                  maxLines: 1,
                  maxLength: 20,
                  keyboardType: TextInputType.number,
                  format: "currency",
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeX,
                    color: AppColors.neutralN40,
                  ),
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return LocaleKeys.validation_input_is_not_empty.tr(args: [
                        LocaleKeys.form_title_amount.tr(),
                      ]);
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 18),
                Text(
                  LocaleKeys.form_title_phone_email_friend.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN40,
                  ),
                ),
                const SizedBox(height: 8),
                TextfieldCustom(
                  controller: friendEntry.phoneController,
                  hintText: "081...",
                  maxLines: 1,
                  maxLength: 15,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN40,
                  ),
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return LocaleKeys.validation_input_is_not_empty.tr(args: [
                        LocaleKeys.form_title_phone_number.tr(),
                      ]);
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 18),
                Text(
                  LocaleKeys.form_title_note_optional.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN40,
                  ),
                ),
                const SizedBox(height: 8),
                TextfieldCustom(
                  controller: friendEntry.noteController,
                  hintText: LocaleKeys.form_hint_text_note.tr(),
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN40,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: onDelete,
              icon: const Icon(
                Icons.delete,
                color: AppColors.red60,
              ),
            ),
          )
        ],
      ),
    );
  }
}
