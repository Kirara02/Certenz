import 'dart:developer';

import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/navigation.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/payment/payment_bank_va_model.dart';
import 'package:certenz/src/data/models/payment/payment_qris_model.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/features/account_billing/view/account_billing_page.dart';
import 'package:certenz/src/features/atm/view/atm_card_page.dart';
import 'package:certenz/src/features/auth/login/view/login_page.dart';
import 'package:certenz/src/features/auth/register/view/register_page.dart';
import 'package:certenz/src/features/auth/register/view/register_success_page.dart';
import 'package:certenz/src/features/bill_success/view/bill_success_page.dart';
import 'package:certenz/src/features/change_password/view/change_password_page.dart';
import 'package:certenz/src/features/create_bill/view/create_bill_page.dart';
import 'package:certenz/src/features/create_split_bill/view/create_split_bill_page.dart';
import 'package:certenz/src/features/detail_split_bill/view/detail_split_bill_page.dart';
import 'package:certenz/src/features/edit_profile/view/edit_profile_page.dart';
import 'package:certenz/src/features/faq/view/faq_page.dart';
import 'package:certenz/src/features/history/view/history_page.dart';
import 'package:certenz/src/features/history_split_bill/view/history_split_bill_page.dart';
import 'package:certenz/src/features/home/view/home_page.dart';
import 'package:certenz/src/features/initial/view/initial_page.dart';
import 'package:certenz/src/features/ktp_verification/view/ktp_verification_page.dart';
import 'package:certenz/src/features/notif_test/notif_test.dart';
import 'package:certenz/src/features/notification/view/notification_page.dart';
import 'package:certenz/src/features/pay/view/pay_page.dart';
import 'package:certenz/src/features/payment_bank/view/payment_bank_page.dart';
import 'package:certenz/src/features/payment_qris/view/payment_qris_page.dart';
import 'package:certenz/src/features/pin/view/pin_page.dart';
import 'package:certenz/src/features/profile/view/profile_page.dart';
import 'package:certenz/src/features/qr_bill/view/qr_bill_page.dart';
import 'package:certenz/src/features/reimbursement/view/reimbursement_page.dart';
import 'package:certenz/src/features/reimbursement_success/view/reimbursement_success_page.dart';
import 'package:certenz/src/features/select_payment/view/select_payment_page.dart';
import 'package:certenz/src/features/splash/view/splash_page.dart';
import 'package:certenz/src/features/split_bill/view/split_bill_page.dart';
import 'package:certenz/src/features/wallet/view/wallet_page.dart';
import 'package:certenz/src/features/welcome/view/welcome_page.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRouter {
  static final router = GoRouter(
    navigatorKey: globalNavigationKey,
    debugLogDiagnostics: true,
    routerNeglect: true,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const NotFoundPage(),
    ),
    initialLocation: '/',
    routes: [
      GoRoute(
        path: "/",
        name: "initial",
        builder: (context, state) => const InitialPage(),
      ),
      GoRoute(
        path: "/notif-test",
        name: "notif-test",
        builder: (context, state) {
          return const NotifTest();
        },
      ),
      GoRoute(
        path: "/splash",
        name: "splash",
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: "/welcome",
        name: "welcome",
        builder: (context, state) => const WelcomePage(),
        routes: [
          GoRoute(
            path: "login",
            name: "login",
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: "register",
            name: "register",
            builder: (context, state) => const RegisterPage(),
            routes: [
              GoRoute(
                path: "success",
                name: "register-success",
                builder: (context, state) => const RegisterSuccessPage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: "/pin",
        name: "pin",
        builder: (context, state) => const PinPage(),
      ),
      GoRoute(
        path: "/qr-code",
        name: "qr-code",
        builder: (context, state) {
          final data = state.extra as BillModel;
          return QRBillPage(data: data);
        },
      ),
      GoRoute(
        path: "/pay",
        name: "pay",
        builder: (context, state) {
          return const PayPage();
        },
      ),
      GoRoute(
        path: "/notification",
        name: "notification",
        builder: (context, state) => const NotificationPage(),
      ),
      GoRoute(
        path: "/atm",
        name: "atm",
        builder: (context, state) => const AtmCardPage(),
      ),
      GoRoute(
        path: "/ktp-verification",
        name: "ktp-verification",
        builder: (context, state) => const KtpVerificationPage(),
      ),
      GoRoute(
        path: "/history-split-bill",
        name: "history-split-bill",
        builder: (context, state) {
          final String id = state.uri.queryParameters['transaction_id']!;
          final String? type = state.uri.queryParameters['type'];
          final String? isPayment = state.uri.queryParameters['is_payment'];
          return HistorySplitBillPage(
            transactionId: int.parse(id),
            type: type,
            isPayment: isPayment == "true" ? true : false,
          );
        },
      ),
      GoRoute(
        path: "/select-payment",
        name: "select-payment",
        builder: (context, state) {
          final String title = state.uri.queryParameters['title'] ?? "";
          final double amount =
              double.parse(state.uri.queryParameters['amount'] ?? "0");
          final int transactionId =
              int.parse(state.uri.queryParameters['transaction_id'] ?? "");
          final String type = state.uri.queryParameters['type']!;
          final String splitId = state.uri.queryParameters['split_id'] ?? "";

          return SelectPaymentPage(
            title: title,
            amount: amount,
            transactionId: transactionId,
            type: type,
            splitId: splitId != "" ? int.parse(splitId) : null,
          );
        },
        routes: [
          GoRoute(
            path: "bank",
            name: "bank",
            builder: (context, state) {
              final data = state.extra as PaymentBankVaModel;
              return PaymentBankPage(data: data);
            },
          ),
          GoRoute(
            path: "qris",
            name: "qris",
            builder: (context, state) {
              final data = state.extra as PaymentQrisModel;
              return PaymentQrisPage(data: data);
            },
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: shellNavigatorHomeKey,
            initialLocation: "/home",
            routes: [
              GoRoute(
                path: '/home',
                name: "home",
                parentNavigatorKey: shellNavigatorHomeKey,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: HomePage()),
                routes: [
                  // child route
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "create-bill",
                    name: "create-bill",
                    builder: (context, state) => const CreateBillPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "create-split-bill",
                    name: "create-split-bill",
                    builder: (context, state) => const CreateSplitBillPage(),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: globalNavigationKey,
                        path: "split",
                        name: "split",
                        builder: (context, state) {
                          final data = state.extra as SplitBillModel;
                          final String isFearly =
                              state.uri.queryParameters['isFearly']!;
                          return SplitBillPage(
                              data: data,
                              isFearly: isFearly == "true" ? true : false);
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: globalNavigationKey,
                        path: "split-success",
                        name: "split-success",
                        builder: (context, state) {
                          final data = state.extra as List<BillModel>;
                          return DetailSplitBillPage(billItems: data);
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "account-billing",
                    name: "account-billing",
                    builder: (context, state) => const AccountBillingPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "reimbursement",
                    name: "reimbursement",
                    builder: (context, state) => const ReimbursementPage(),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: globalNavigationKey,
                        path: "success",
                        name: "r-success",
                        builder: (context, state) =>
                            const ReimbursementSuccessPage(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigatorWalletKey,
            routes: [
              GoRoute(
                path: "/wallet",
                name: "wallet",
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: WalletPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigatorHistoryKey,
            routes: [
              GoRoute(
                path: "/history",
                name: "history",
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: HistoryPage()),
                routes: [
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "success",
                    name: "history-success",
                    builder: (context, state) {
                      final String id =
                          state.uri.queryParameters['transaction_id'] ?? "";
                      log(id);
                      return BillSuccessPage(transactionId: int.parse(id));
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigatorProfileKey,
            routes: [
              GoRoute(
                path: "/profile",
                name: "profile",
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ProfilePage()),
                routes: [
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "edit-profile",
                    name: "edit-profile",
                    builder: (context, state) => const EditProfilePage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "change-password",
                    name: "change-password",
                    builder: (context, state) => const ChangePasswordPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: globalNavigationKey,
                    path: "faq",
                    name: "faq",
                    builder: (context, state) => const FAQPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "404",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: AppConstants.kFontSizeX,
                    ),
                  ),
                  VerticalDivider(
                    color: AppColors.primaryColors,
                  ),
                  Text(
                    "This page could not be found",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: AppConstants.kFontSizeXXL,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              onPressed: () => context.pushNamed("initial"),
              child: const Text("Refresh"),
            ),
          )
        ],
      ),
    );
  }
}
