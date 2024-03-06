import 'package:certenz/src/config/routes.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> globalNavigationKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> rootNavigationKey = GlobalKey<NavigatorState>();

final shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final shellNavigatorWalletKey = GlobalKey<NavigatorState>(debugLabel: 'wallet');
final shellNavigatorHistoryKey =
    GlobalKey<NavigatorState>(debugLabel: 'history');
final shellNavigatorProfileKey =
    GlobalKey<NavigatorState>(debugLabel: 'profile');

class Navigation {
  static intentWithData(String routeName, Object arguments) {
    globalNavigationKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  static back() => globalNavigationKey.currentState?.pop();

  static BuildContext? get ctx =>
      MyRouter.router.routerDelegate.navigatorKey.currentContext;
}
