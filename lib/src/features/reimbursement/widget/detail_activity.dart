import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/reimbursement/widget/detail_activity_form.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailActivity extends StatefulWidget {
  final List<String> data;
  const DetailActivity({super.key, required this.data});

  @override
  State<DetailActivity> createState() => _DetailActivityState();
}

class _DetailActivityState extends State<DetailActivity> {
  List<TextEditingController> detailControllers = [];
  List<String> value = [];
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    value = widget.data;
    vLog(value);

    return Scaffold(
      appBar: AppbarCustom(
        onPressed: () => Navigator.pop(context),
        title: LocaleKeys.reimbursement_title.tr(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.form_title_detail_activity.tr(),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            if (value.isNotEmpty)
              SizedBox(
                child: Column(
                  children: value.asMap().entries.map((entry) {
                    final index = entry.key + 1;
                    final text = entry.value;

                    return Container(
                      width: AppScreens.width,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.neutralN120),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Detail $index",
                                style: const TextStyle(
                                  fontSize: AppConstants.kFontSizeXS,
                                ),
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.close,
                                  color: AppColors.red,
                                  size: 18,
                                ),
                                onTap: () {
                                  setState(() {
                                    value.removeAt(index - 1);
                                  });
                                },
                              ),
                            ],
                          ),
                          Container(
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 15),
                            child: Text(
                              text,
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            const SizedBox(
              height: 8,
            ),
            IntrinsicWidth(
              child: InkWell(
                onTap: () {
                  setState(() {
                    final newController = TextEditingController();
                    detailControllers.add(newController);
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.orange),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    LocaleKeys.button_add_detail.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      fontWeight: FontWeight.w500,
                      color: AppColors.orange,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Column(
              children: detailControllers.asMap().entries.map((entry) {
                final index = entry.key;
                final controller = entry.value;

                return DetailActivityForm(
                  title: "Detail ${index + 1}",
                  controller: controller,
                  onDelete: () {
                    setState(() {
                      detailControllers.removeAt(index);
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        height: AppScreens.height * 0.1,
        child: BtnPrimary(
          title: LocaleKeys.button_send.tr(),
          onTap: () {
            final detailsData =
                detailControllers.map((controller) => controller.text).toList();
            value.addAll(detailsData);
            Navigator.pop(context, value);
          },
        ),
      ),
    );
  }
}
