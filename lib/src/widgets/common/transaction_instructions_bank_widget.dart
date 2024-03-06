import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class TransactionInstructionBankWidget extends StatelessWidget {
  final String title;
  final String vaCode;
  const TransactionInstructionBankWidget(
      {super.key, required this.vaCode, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionInstructionListTile(
          title: "Petunjuk Pembayaran",
          children: [
            _contentItem(
                no: "1",
                desc:
                    "Login ke mBanking-mu. Pilih Payment, kemudian pilih e - Commerce"),
            _contentItem(
                no: "2",
                desc:
                    "Pilih Penyedia Layanan, masukkan nomor Virtual Account $vaCode, kemudian pilih Lanjut."),
            _contentItem(
                no: "3",
                desc:
                    "Periksa informasi yang tertera di layar. Pastikan Merchant adalah “.....”. Total tagihan sudah benar dan username kamu ......  . Jika benar, masukkan PIN anda dan pilih OK"),
          ],
        ),
        const SizedBox(height: 8),
        TransactionInstructionListTile(
          title: "Petunjuk Transfer iBanking",
          children: [
            _contentItem(no: "1", desc: "Pilih Bayar > Multi Payment"),
            _contentItem(
                no: "2",
                desc:
                    "Pilih Dari Rekening : Rekening Anda dan Penyedia Jasa, lalu klik Lanjutkan"),
            _contentItem(
                no: "3",
                desc:
                    "Masukkan nomor Virtual Account 229 08988556781, kemudian pilih Lanjutkan."),
            _contentItem(
                no: "4",
                desc:
                    "Periksa informasi yang tertera di layar. Pastikan Merchant adalah “.....”. Total tagihan sudah benar dan username kamu ......  . Jika benar, masukkan PIN anda dan pilih OK"),
            _contentItem(
                no: "5", desc: "Masukkan PIN token anda dan klik Kirim"),
          ],
        ),
        const SizedBox(height: 8),
        TransactionInstructionListTile(
          title: "Petunjuk Transfer ATM",
          children: [
            _contentItem(no: "1", desc: "Pilih Bayar / Beli"),
            _contentItem(
                no: "2", desc: "Pilih Lainnya > Lainnya > Multi Payment"),
            _contentItem(
                no: "3",
                desc: "Masukkan kode perusahaan 89608 dan pilih Benar"),
            _contentItem(
                no: "4",
                desc:
                    "Masukkan nomor Virtual Account 229 08988556781, kemudian pilih Benar."),
            _contentItem(
                no: "5",
                desc:
                    "Periksa informasi yang tertera di layar. Pastikan Merchant adalah “.....”. Total tagihan sudah benar dan username kamu ......  . Jika benar, tekan angka 1 dan pilih Ya"),
            _contentItem(
                no: "6", desc: "Periksa layar konfirmasi dan pilih Ya"),
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
