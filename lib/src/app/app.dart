import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/blocs/faq/faq_bloc.dart';
import 'package:certenz/src/features/auth/login/view/login_page.dart';
import 'package:certenz/src/features/auth/register/view/register_page.dart';
import 'package:certenz/src/features/initial/view/initial_page.dart';
import 'package:certenz/src/features/splash/view/splash_page.dart';
import 'package:certenz/src/features/welcome/view/welcome_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/navigation.dart';
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
        // BlocProvider(
        //   create: (context) => FaqBloc(),
        // )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Certenz',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: UXTheme.light(),
        navigatorKey: navigatorKey,
        initialRoute: '/initial',
        routes: {
          "/initial": (context) => const InitialPage(),
          "/splash": (context) => const SplashPage(),
          "/home": (context) => const AppRoot(),
          "/welcome": (context) => const WelcomePage(),
          "/login": (context) => const LoginPage(),
          "/register": (context) => const RegisterPage(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) {
            return Scaffold(
              appBar: AppBar(title: const Text('ERROR'), centerTitle: true),
              body: const Center(
                child: Text('Page not Found'),
              ),
            );
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
