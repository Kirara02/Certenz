import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class TransactionInstructionQrisWidget extends StatelessWidget {
  const TransactionInstructionQrisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionInstructionListTile(
          title: "Petunjuk QRIS",
          children: [
            _contentItem(no: "1", desc: "Pilih menu Pay"),
            _contentItem(no: "2", desc: "Scan atau upload QRIS, lalu klik OK"),
            _contentItem(
                no: "3",
                desc:
                    "Periksa informasi yang tertera. Pastikan Merchant adalah “.....”. Total tagihan sudah benar dan username kamu ......  . Jika benar, masukkan PIN anda dan pilih Bayar"),
          ],
        ),
      ],
    );
  }

  Widget _contentItem({required String no, required String desc}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color(0xffd9d9d9),
              shape: BoxShape.circle,
            ),
            child: Text(
              no,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              desc,
              style: const TextStyle(
                color: UIColors.text,
                fontSize: AppConstants.kFontSizeS,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TransactionInstructionListTile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const TransactionInstructionListTile({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            color: AppColors.neutralN40,
          ),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        tilePadding: const EdgeInsets.only(left: 8, right: 8),
        childrenPadding: const EdgeInsets.only(
          bottom: 14,
        ),
        expandedAlignment: Alignment.centerLeft,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        collapsedBackgroundColor: AppColors.neutralN110,
        collapsedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            decoration: BoxDecoration(
              color: UIColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: children,
            ),
          )
        ],
      ),
    );
  }
}
