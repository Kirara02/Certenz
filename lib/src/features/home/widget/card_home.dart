import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/features/home/widget/icon_widget.dart';
import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
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
          Expanded(
            child: IconWidget(
              onTap: () => Navigator.pushNamed(context, "/create-bill"),
              icon: Assets.icons.cbill.path,
              title: "Create Bill",
            ),
          ),
          Expanded(
            child: IconWidget(
              onTap: () => Navigator.pushNamed(context, "/split-bill"),
              icon: Assets.icons.splitBill.path,
              title: "Split Bill",
            ),
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
          Expanded(
            child: IconWidget(
              onTap: () => Navigator.pushNamed(context, "/account-billing"),
              icon: Assets.icons.accountBill.path,
              title: "Account\nBilling",
            ),
          ),
          Expanded(
            child: IconWidget(
              onTap: () => Navigator.pushNamed(context, "/reimbursement"),
              icon: Assets.icons.reimbursement.path,
              title: "Reimbursement",
              height: 16,
              width: 16,
            ),
          ),
        ],
      ),
    );
  }
}
