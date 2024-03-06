import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/features/profile/widget/setting_list_tile.dart';
import 'package:certenz/src/widgets/dialogs/modal_bottom_change_language.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsSection extends StatefulWidget {
  const SettingsSection({super.key});

  @override
  State<SettingsSection> createState() => _SettingsSectionState();
}

class _SettingsSectionState extends State<SettingsSection> {
  void _modalSelectLanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ModalBottomChangeLanguage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.profile_settings_acc_title.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SettingListTile(
            icon: const Icon(Icons.person_outline_rounded),
            title: LocaleKeys.profile_settings_edit_profile.tr(),
            onTap: () => context.pushNamed("edit-profile"),
          ),
          const SizedBox(height: 16),
          SettingListTile(
            icon: const Icon(Icons.lock_outline_rounded),
            title: LocaleKeys.profile_settings_change_password.tr(),
            onTap: () => context.pushNamed("change-password"),
          ),
          const SizedBox(height: 28),
          Text(
            LocaleKeys.profile_settings_gen_title.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SettingListTile(
            icon: Assets.icons.language.svg(),
            title: LocaleKeys.profile_settings_change_language.tr(),
            onTap: () => _modalSelectLanguage(),
          ),
          const SizedBox(height: 16),
          SettingListTile(
            icon: Assets.icons.faq.svg(),
            title: LocaleKeys.profile_settings_faq.tr(),
            onTap: () => context.pushNamed("faq"),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
