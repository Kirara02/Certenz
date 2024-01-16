import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:flutter/material.dart';

class FaqFooter extends StatelessWidget {
  const FaqFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Layanan Pengaduan User\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      "PT. Certenz Swatran Bhagyatra\nemail:care@certenz.com \n\nWhatsapp Business : (+62)813-2898-2496",
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Assets.images.logo.image(
              width: 60,
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              "\u00a9 PT. Certenz Swatran Bhagyatra",
              style: TextStyle(
                fontSize: AppConstants.kFontSizeXS,
              ),
            )
          ],
        )
      ],
    );
  }
}
