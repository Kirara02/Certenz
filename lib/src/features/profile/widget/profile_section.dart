import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/utils/logger.dart';
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
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
      child: BlocListener<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>(),
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            unAuthenticated: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/welcome",
                (route) => false,
              );
            },
            // Other state handlers if needed
          );
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>()..add(const AuthEvent.getUser()),
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SpinKitCircle(
                color: AppColors.neutralN140,
              ),
              fetchUser: (user) => _buildProfileContent(user),
              loading: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildProfileContent(UserModel user) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          _buildProfileImage(),
          const SizedBox(height: 20),
          Text(
            user.name,
            style: const TextStyle(
                fontSize: AppConstants.kFontSizeXL,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 35),
          ProfileListTile(
            title: LocaleKeys.profile_profile_email.tr(),
            text: user.email,
            icon: Assets.icons.mail.path,
          ),
          const SizedBox(height: 24),
          _buildSignOutButton(context),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      height: 80,
      width: 80,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.grey2,
      ),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Assets.images.user3.path),
            radius: 40,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: _editIcon(),
          ),
        ],
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
    return ListTile(
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
