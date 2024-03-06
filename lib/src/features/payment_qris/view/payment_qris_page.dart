import 'dart:async';

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/payment/payment_qris_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/transaction_instructions_qris_widget.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentQrisPage extends StatefulWidget {
  final PaymentQrisModel data;
  const PaymentQrisPage({super.key, required this.data});

  @override
  State<PaymentQrisPage> createState() => _PaymentQrisPageState();
}

class _PaymentQrisPageState extends State<PaymentQrisPage> {
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
        title: LocaleKeys.payment_bank_title.tr(),
        shape: LinearBorder.none,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: AppScreens.height * 0.9,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
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
                            formatCurrencyNonDecimal(widget.data.amount),
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
                            fontSize: AppConstants.kFontSizeS,
                          ),
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
                            Assets.images.qris.image(
                              width: 60,
                              height: 40,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              "QRIS",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.neutralN40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Column(
                        children: [
                          const Text(
                            "Certenz",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeXXL,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          UICacheNetworkImage(
                            imageUrl: widget.data.qrisImage,
                            size: const Size(240, 240),
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const TransactionInstructionQrisWidget(),
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
    );
  }
}
