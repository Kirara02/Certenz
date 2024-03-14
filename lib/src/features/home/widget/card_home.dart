import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/features/home/widget/icon_widget.dart';
import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:certenz/src/widgets/dialogs/card_account_dialog.dart';
import 'package:certenz/src/widgets/dialogs/verification_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
  });

  void _handleVerification(BuildContext context, String route) async {
    String? verif = await SecureStorageHelper.getUserVerified;
    String? hasBank = await SecureStorageHelper.getHasBankAcc;

    if (bool.tryParse(verif!) == false) {
      if (context.mounted) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => const VerificationDialog(),
        );
      }
    } else if (bool.tryParse(hasBank!) == false) {
      if (context.mounted) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => const CardAccountDialog(),
        );
      }
    } else {
      if (context.mounted) {
        context.pushNamed(route);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconWidget(
            onTap: () => _handleVerification(context, "create-bill"),
            icon: Assets.icons.cbill.path,
            title: "Create Bill",
          ),
          IconWidget(
            onTap: () => _handleVerification(context, "create-split-bill"),
            icon: Assets.icons.splitBill.path,
            title: "Split Bill",
          ),
          // Expanded(
          //   child: IconWidget(
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => const GrantedMoneyPage(),
          //           ));
          //     },
          //     icon: Assets.icons.security.path,
          //     title: "Granted\nMoney",
          //   ),
          // ),
          IconWidget(
            onTap: () => _handleVerification(context, "account-billing"),
            icon: Assets.icons.accountBill.path,
            title: "Account\nBilling",
          ),
          IconWidget(
            onTap: () => _handleVerification(context, "reimbursement"),
            icon: Assets.icons.reimbursement.path,
            title: "Reimbursement",
            height: 16,
            width: 16,
          ),
        ],
      ),
    );
  }
}
