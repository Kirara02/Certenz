import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/features/account_billing/view/account_billing_page.dart';
import 'package:certenz/src/features/atm/view/atm_card_page.dart';
import 'package:certenz/src/features/auth/login/view/login_page.dart';
import 'package:certenz/src/features/auth/register/view/register_page.dart';
import 'package:certenz/src/features/change_password/view/change_password_page.dart';
import 'package:certenz/src/features/create_bill/view/create_bill_page.dart';
import 'package:certenz/src/features/create_split_bill/view/create_split_bill_page.dart';
import 'package:certenz/src/features/edit_profile/view/edit_profile_page.dart';
import 'package:certenz/src/features/faq/view/faq_page.dart';
import 'package:certenz/src/features/initial/view/initial_page.dart';
import 'package:certenz/src/features/pin/view/pin_page.dart';
import 'package:certenz/src/features/qr_bill/view/qr_bill_page.dart';
import 'package:certenz/src/features/reimbursement/view/reimbursement_page.dart';
import 'package:certenz/src/features/reimbursement_success/view/reimbursement_success_page.dart';
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
          "/pin": (context) => const PinPage(),
          "/login": (context) => const LoginPage(),
          "/register": (context) => const RegisterPage(),
          "/create-bill": (context) => const CreateBillPage(),
          "/split-bill": (context) => const CreateSplitBillPage(),
          "/account-billing": (context) => const AccountBillingPage(),
          "/reimbursement": (context) => const ReimbursementPage(),
          "/reimbursement-success": (context) =>
              const ReimbursementSuccessPage(),
          "/atm": (context) => const AtmCardPage(),
          "/edit-profile": (context) => const EditProfilePage(),
          "/change-password": (context) => const ChangePasswordPage(),
          "/faq": (context) => const FAQPage(),
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
