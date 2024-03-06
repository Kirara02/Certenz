import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/features/history/view/history_page.dart';
import 'package:certenz/src/features/home/view/home_page.dart';
import 'package:certenz/src/features/profile/view/profile_page.dart';
import 'package:certenz/src/features/wallet/view/wallet_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../config/constant.dart';
import '../config/theme/colors.dart';
import '../cubits/navigation_cubit.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool exitApp = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(LocaleKeys.exit_confirmation_title.tr()),
          content: Text(LocaleKeys.exit_confirmation_message.tr()),
          actions: [
            TextButton(
              child: Text(LocaleKeys.exit_confirmation_cancel.tr()),
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Closes the dialog without exiting
              },
            ),
            TextButton(
              child: Text(LocaleKeys.exit_confirmation_exit.tr()),
              onPressed: () {
                Navigator.of(context).pop(true); // Exits the app
              },
            ),
          ],
        );
      },
    );

    return exitApp;
  }

  Widget _buildBody(BuildContext context, state) {
    switch (state) {
      case 0:
        return const HomePage();
      case 1:
        return const WalletPage();
      case 3:
        return const HistoryPage();
      case 4:
        return const ProfilePage();
    }

    return const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: BlocProvider(
        create: (context) => NavigationCubit(),
        child: BlocBuilder<NavigationCubit, int>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: UIColors.white,
              resizeToAvoidBottomInset: true,
              body: _buildBody(context, state),
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  context.read<NavigationCubit>().changeIndex(index);
                },
                currentIndex: state,
                useLegacyColorScheme: true,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      Assets.icons.certenzPng.path,
                      width: 25,
                      height: 25,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(state == 1
                        ? Assets.icons.walletActive.path
                        : Assets.icons.walletUnactive.path),
                    label: "Wallet",
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const PayPage(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColors,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Assets.icons.qr.path),
                            const Text(
                              "Pay",
                              style: TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                color: AppColors.neutralN140,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(state == 3
                        ? Assets.icons.historyActive.path
                        : Assets.icons.historyUnactive.path),
                    label: "History",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(state == 4
                        ? Assets.icons.profileActive.path
                        : Assets.icons.profileUnactive.path),
                    label: "Profile",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      floatingActionButton: InkWell(
        onTap: () {
          context.pushNamed("pay");
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: AppColors.primaryColors,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.qr.path),
              const Text(
                "Pay",
                style: TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN140,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              clipBehavior: Clip.antiAlias,
              notchMargin: 4,
              color: UIColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  activeColor: UIColors.white,
                  gap: 6,
                  iconSize: 24,
                  padding: const EdgeInsets.all(8),
                  duration: const Duration(milliseconds: 300),
                  tabBorderRadius: 8,
                  tabBackgroundColor: AppColors.primaryColors,
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                      iconColor: navigationShell.currentIndex == 0
                          ? UIColors.white
                          : AppColors.neutralN150,
                    ),
                    GButton(
                      icon: LineIcons.wallet,
                      text: 'Wallet',
                      iconColor: navigationShell.currentIndex == 1
                          ? UIColors.white
                          : AppColors.neutralN150,
                    ),
                    GButton(
                      icon: LineIcons.history,
                      text: 'History',
                      iconColor: navigationShell.currentIndex == 2
                          ? UIColors.white
                          : AppColors.neutralN150,
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                      iconColor: navigationShell.currentIndex == 3
                          ? UIColors.white
                          : AppColors.neutralN150,
                    ),
                  ],
                  selectedIndex: navigationShell.currentIndex,
                  onTabChange: _goBranch,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
