import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/data/models/user/user_detail_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:certenz/src/features/profile/widget/profile_list_tile.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: Builder(builder: (context) {
        return BlocBuilder<UserBloc, UserState>(
          bloc: context.read<UserBloc>()..add(const UserEvent.getUser()),
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => SpinKitCircle(color: AppColors.primaryColors),
              success: (user) => _buildProfileContent(user),
              loading: () => SpinKitCircle(color: AppColors.primaryColors),
            );
          },
        );
      }),
    );
  }

  Widget _buildProfileContent(UserDetailModel user) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          _buildProfileImage(user.profilePicture ??
              (user.name != null ? generateAvatarUrl(user.name!) : "Default")),
          const SizedBox(height: 12),
          Text(
            user.name!,
            style: const TextStyle(
                fontSize: AppConstants.kFontSizeXL,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 40),
          ProfileListTile(
            title: LocaleKeys.profile_profile_email.tr(),
            text: user.email!,
            icon: Assets.icons.mail.path,
          ),
          const SizedBox(height: 12),
          ProfileListTile(
            title: LocaleKeys.profile_profile_phone.tr(),
            text: user.telp!,
            icon: Assets.icons.phone.path,
          ),
          const SizedBox(height: 12),
          ProfileListTile(
            title: LocaleKeys.profile_profile_address.tr(),
            text: user.location!,
            icon: Assets.icons.address.path,
          ),
          const SizedBox(height: 24),
          _buildSignOutButton(context),
        ],
      ),
    );
  }

  Widget _buildProfileImage(String imgUrl) {
    return Container(
      height: 80,
      width: 80,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.grey2,
      ),
      child: ClipOval(
        child: UICacheNetworkImage(
          imageUrl: imgUrl,
          fit: BoxFit.cover,
          shimmerShape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _editIcon() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: AppColors.neutralN140,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: AppColors.black)],
      ),
      child: SvgPicture.asset(Assets.icons.penEdit.path),
    );
  }

  Widget _buildSignOutButton(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () {
            showLoadingDialog(context);
          },
          unAuthenticated: () {
            hideDialog(context);
            Navigator.pushNamedAndRemoveUntil(
                context, "/welcome", (route) => false);
          },
        );
      },
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: AppColors.orange,
          radius: 12,
          child: Icon(Icons.logout, color: AppColors.neutralN140, size: 17),
        ),
        title: const Text(
          "Sign Out",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        onTap: () {
          _showLogoutConfirmation(context);
        },
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure you want to sign out?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: const Text('Sign Out'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                context.read<AuthBloc>().add(const AuthEvent.userLogout());
              },
            ),
          ],
        );
      },
    );
  }
}
