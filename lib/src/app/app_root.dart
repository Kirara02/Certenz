import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/features/history/view/history_page.dart';
import 'package:certenz/src/features/home/view/home_page.dart';
import 'package:certenz/src/features/profile/view/profile_page.dart';
import 'package:certenz/src/features/wallet/view/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      useSafeArea: true,
      barrierColor: Colors.black.withOpacity(0.25),
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Apakah anda yakin keluar aplikasi ?",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeL,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: const Text("Ya"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: const Text("Tidak"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
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
