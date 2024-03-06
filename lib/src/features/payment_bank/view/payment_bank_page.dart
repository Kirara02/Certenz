import 'dart:async';

import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/payment/payment_bank_va_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/transaction_instructions_bank_widget.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class PaymentBankPage extends StatefulWidget {
  final PaymentBankVaModel data;
  const PaymentBankPage({super.key, required this.data});

  @override
  State<PaymentBankPage> createState() => _PaymentBankPageState();
}

class _PaymentBankPageState extends State<PaymentBankPage> {
  late Timer _timer;
  late DateTime _createdTime;
  late DateTime _expiryTime;
  Duration? _remainingTime;

  @override
  void initState() {
    super.initState();
    _createdTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(widget.data.created);
    _expiryTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(widget.data.expired);
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    final now = DateTime.now();
    if (_expiryTime.isAfter(now)) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          final now = DateTime.now();
          if (_expiryTime.isAfter(now)) {
            _remainingTime = _expiryTime.difference(now);
          } else {
            _remainingTime = null;
            _timer.cancel();
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.goNamed("home");
          }
        },
        shape: LinearBorder.none,
        title: LocaleKeys.payment_bank_title.tr(),
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (context.canPop()) {
            context.pop();
          } else {
            context.goNamed("home");
          }
          return false;
        },
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: AppScreens.height * 0.9,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(33),
                      bottomRight: Radius.circular(33),
                    ),
                  ),
                  child: Container(
                    width: AppScreens.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 24),
                    decoration: const BoxDecoration(
                      color: AppColors.neutralN130,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          LocaleKeys.payment_bank_subtitle.tr(),
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(LocaleKeys.payment_bank_payment_amount.tr()),
                            Text(
                              formatCurrencyNonDecimal(
                                  widget.data.amount.toDouble()),
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeL,
                                fontWeight: FontWeight.w600,
                                color: AppColors.orange,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(LocaleKeys.payment_bank_pay_in.tr()),
                            Text(
                              _remainingTime != null
                                  ? '${_remainingTime!.inHours} jam ${_remainingTime!.inMinutes.remainder(60)} menit ${_remainingTime!.inSeconds.remainder(60)} detik'
                                  : 'Expired',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.orange,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Jatuh tempo ${widget.data.expired}",
                            style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: AppColors.black),
                            ),
                          ),
                          child: Row(
                            children: [
                              UICacheNetworkImage(
                                imageUrl: widget.data.bankImage,
                                size: const Size(60, 40),
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                widget.data.bankName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.neutralN40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("No. Rek/ Virtual Account"),
                                const SizedBox(height: 4),
                                Text(
                                  widget.data.vaCode,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.orange,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(
                                        ClipboardData(text: widget.data.vaCode))
                                    .then((value) {
                                  UXToast.show(message: "Text copied");
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Salin",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff108EE9),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        TransactionInstructionBankWidget(
                            title: widget.data.note ?? "",
                            vaCode: widget.data.vaCode),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                const PoweredWidget(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
