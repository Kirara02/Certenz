import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';
import 'package:certenz/src/features/reimbursement/widget/detail_activity.dart';
import 'package:certenz/src/features/reimbursement_success/view/reimbursement_success_page.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/modal_bottom_select_account_bank.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:certenz/src/widgets/forms/image_bulk_picker.dart';
import 'package:certenz/src/widgets/forms/image_form_file.dart';
import 'package:certenz/src/widgets/forms/select_bank_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ReimbursementPage extends StatefulWidget {
  const ReimbursementPage({super.key});

  @override
  State<ReimbursementPage> createState() => _ReimbursementPageState();
}

class _ReimbursementPageState extends State<ReimbursementPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController detailActivityController = TextEditingController();
  TextEditingController startDateController = TextEditingController();

  AccountBankModel? selectedAccDestination;
  List<String> imagesDocs = [];
  List<String> detailActivities = [];

  late String date;

  Future _deliveryDate({bool passDate = false}) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: DatePicker(
            passDate: passDate,
            tanggal_awal: date,
          ),
        );
      },
    );
  }

  Future _selectAccount(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return const ModalBottomSelectAccountBank();
      },
    );
  }

  Future _bulkImage({String? title, bool? showMore}) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          ImageBulkPicker(title: title, showAdMore: showMore ?? true),
    );
  }

  Future _detailActivity({required List<String> data}) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          DetailActivity(data: data),
    );
  }

  @override
  void initState() {
    super.initState();
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  }

  @override
  void dispose() {
    emailController.dispose();
    titleController.dispose();
    amountController.dispose();
    noteController.dispose();
    startDateController.dispose();
    detailActivityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              LocaleKeys.form_title_email.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            FieldCustom(
              controller: emailController,
              hintText: LocaleKeys.form_hint_text_email2.tr(),
              maxLines: 1,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              LocaleKeys.form_title_title_activity.tr(),
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
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              LocaleKeys.form_title_amount.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            FieldCustom(
              controller: amountController,
              format: "currency",
              hintText: LocaleKeys.form_hint_text_amount.tr(),
              maxLines: 1,
              maxLength: 20,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeX,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              LocaleKeys.form_title_start_date.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            FieldCustom(
              controller: startDateController,
              hintText: LocaleKeys.form_hint_text_date.tr(),
              suffixIcon: const Icon(Icons.calendar_month),
              readOnly: true,
              onTap: () => _deliveryDate(passDate: true).then((value) {
                if (value != null) {
                  startDateController.text = value;
                }
              }),
            ),
            const SizedBox(height: 18),
            Text(
              LocaleKeys.form_title_detail_activity.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            FieldCustom(
              controller: detailActivityController,
              hintText: LocaleKeys.form_hint_text_title.tr(),
              maxLength: 10,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
                overflow: TextOverflow.ellipsis,
              ),
              suffixIcon: detailActivities.length < 2
                  ? const Icon(Icons.chevron_right_rounded)
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Container(
                        height: 25,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Check Detail",
                          style: TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutralN140,
                          ),
                        ),
                      ),
                    ),
              readOnly: true,
              onTap: () =>
                  _detailActivity(data: detailActivities).then((value) {
                if (value != null) {
                  setState(() {
                    detailActivities = value;
                  });

                  if (detailActivities.length == 1) {
                    detailActivityController.text = detailActivities[0];
                  } else if (detailActivities.length > 1) {
                    detailActivityController.clear();
                  }
                }
              }),
            ),
            const SizedBox(height: 18),
            Text(
              LocaleKeys.form_title_select_dest.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            // SelectBankButton(
            //   hintText: LocaleKeys.form_hint_text_select_account.tr(),
            //   selectedAccount: selectedAccDestination,
            //   onTap: () => _selectAccount(context).then((value) {
            //     if (value != null) {
            //       setState(() {
            //         selectedAccDestination = value;
            //       });
            //     }
            //   }),
            // ),
            const SizedBox(height: 18),
            Text(
              LocaleKeys.form_title_documentation.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            ImageSelectionWidget(
              imagesDocs: imagesDocs,
              onImagesSelected: (selectedImages) {
                setState(() {
                  imagesDocs = selectedImages;
                });
              },
            ),
            const SizedBox(height: 18),
            const Text(
              "Note :",
              style: TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(height: 8),
            FieldCustom(
              controller: noteController,
              hintText: LocaleKeys.form_hint_text_note.tr(),
              maxLines: 1,
              maxLength: 20,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BtnPrimary(
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReimbursementSuccessPage(),
                  ),
                );
              },
              title: LocaleKeys.button_send.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
