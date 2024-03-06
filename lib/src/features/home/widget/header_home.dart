import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/user/user_detail_model.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({
    super.key,
  });

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  UserDetailModel? userData;
  UserModel? userLocal;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    userLocal = await SecureStorageHelper.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          context.read<UserBloc>()..add(const UserEvent.getUser()),
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              success: (user) {
                bool? userVerified = user.ktpVerification;
                bool? hasBank = user.hasBankAccount;

                if (userVerified != null) {
                  SecureStorageHelper.saveUserVerified(user.ktpVerification!);
                }
                if (hasBank != null) {
                  SecureStorageHelper.saveHasBankAcc(user.hasBankAccount!);
                }
                setState(() {
                  userData = user;
                });
              });
        },
        child: Container(
          padding: const EdgeInsets.only(
            top: 48,
            right: 20,
            left: 20,
            bottom: 28,
          ),
          decoration: const BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: UICacheNetworkImage(
                          imageUrl: userData?.profilePicture ??
                              "https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg",
                          size: const Size(32, 32),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        userLocal?.name ?? "",
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                          fontWeight: FontWeight.bold,
                          color: AppColors.neutralN140,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: UIColors.white,
                    ),
                    child: InkWell(
                      onTap: () => context.pushNamed("notification"),
                      child: SvgPicture.asset(
                        Assets.icons.notification.path,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Text(
                LocaleKeys.home_page_greeting.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: UIColors.white,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
