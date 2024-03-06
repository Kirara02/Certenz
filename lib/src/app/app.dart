import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/config/routes.dart';
import 'package:certenz/src/cubits/split_bill/splitbill_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:certenz/src/config/theme/themes.dart';
import 'package:certenz/src/cubits/navigation_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => SplitbillCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Certenz',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: UXTheme.light(),
        routerConfig: MyRouter.router,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
