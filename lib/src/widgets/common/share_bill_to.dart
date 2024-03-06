import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class ShareBillTo extends StatelessWidget {
  final String? text;
  const ShareBillTo({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Text(
            text ?? "Share bill to",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.neutralN40,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.neutralN140,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    // SharedCode.onButtonTap(
                    //   Shares.sharetelegram,
                    //   null,
                    //   false,
                    //   "Certenz",
                    //   "https://www.instagram.com/certenz.id/",
                    // );
                  },
                  child: Image.asset(
                    Assets.icons.telegram.path,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // SharedCode.onButtonTap(
                    //   Shares.whatsapp,
                    //   null,
                    //   false,
                    //   "Certenz",
                    //   "https://www.instagram.com/certenz.id/",
                    // );
                  },
                  child: Image.asset(
                    Assets.icons.whatsapp.path,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // SharedCode.onShare(context, null, null, "null");
                  },
                  child: Image.asset(
                    Assets.icons.lainnya.path,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
