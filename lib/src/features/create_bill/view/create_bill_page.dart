import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/cubits/text_field_cubit.dart';
import 'package:certenz/src/features/detail_create_bill/view/detail_create_bill_page.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateBillPage extends StatefulWidget {
  const CreateBillPage({super.key});

  @override
  State<CreateBillPage> createState() => _CreateBillPageState();
}

class _CreateBillPageState extends State<CreateBillPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckSplit(),
      child: Scaffold(
        appBar: AppbarCustom(
          onPressed: () => Navigator.pop(context),
          title: LocaleKeys.create_bill_title.tr(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.form_title_title.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              FieldCustom(
                controller: titleController,
                hintText: LocaleKeys.form_hint_text_title.tr(),
                maxLines: 1,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeM,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                LocaleKeys.form_title_total_amount.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeM,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              FieldCustom(
                controller: amountController,
                hintText: LocaleKeys.form_hint_text_amount.tr(),
                maxLines: 1,
                format: "currency",
                maxLength: 20,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeX,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                LocaleKeys.form_title_to.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              FieldCustom(
                controller: toController,
                hintText: LocaleKeys.form_hint_text_to_email.tr(),
                maxLines: 1,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          height: AppScreens.height * 0.1,
          child: BtnPrimary(
            title: LocaleKeys.button_create_bill.tr(),
            onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailCreateBillPage(),
                ),
                (route) => false),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    amountController.dispose();
    toController.dispose();
  }
}
