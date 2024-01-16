// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/profile/widget/accounts_section.dart';
import 'package:certenz/src/features/profile/widget/profile_section.dart';
import 'package:certenz/src/features/profile/widget/settings_section.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedMenuIndex = 0;

  void _selectMenu(int index) {
    setState(() {
      _selectedMenuIndex = index;
    });
  }

  Widget _buildContent() {
    switch (_selectedMenuIndex) {
      case 0:
        return const ProfileSection();
      case 1:
        return const SettingsSection();
      case 2:
        return const AccountsSection();
      default:
        return const ProfileSection();
    }
  }

  Widget _buildMenu(String title, int index) {
    return InkWell(
      onTap: () {
        _selectMenu(index);
      },
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 80,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: index == _selectedMenuIndex
              ? AppColors.neutralN140
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: AppConstants.kFontSizeS,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          IntrinsicWidth(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.grey2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenu(LocaleKeys.profile_tab_profile.tr(), 0),
                  _buildMenu(LocaleKeys.profile_tab_settings.tr(), 1),
                  _buildMenu(LocaleKeys.profile_tab_account.tr(), 2),
                ],
              ),
            ),
          ),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }
}
