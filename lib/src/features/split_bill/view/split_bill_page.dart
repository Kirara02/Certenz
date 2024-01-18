import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/split_bill/split_bill_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/cubits/split_bill/splitbill_cubit.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/features/create_split_bill/view/create_split_bill_page.dart';
import 'package:certenz/src/features/detail_bill/view/detail_bill_page.dart';
import 'package:certenz/src/features/detail_split_bill/view/detail_split_bill_page.dart';
import 'package:certenz/src/features/split_bill/widget/split_bill_with.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class SplitBillPage extends StatefulWidget {
  final bool isFearly;
  final SplitBillModel data;

  const SplitBillPage({
    super.key,
    this.isFearly = false,
    required this.data,
  });

  @override
  State<SplitBillPage> createState() => _SplitBillPageState();
}

class _SplitBillPageState extends State<SplitBillPage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  List<String> listEmails = [];
  List<String> listAmounts = [];
  List<String> listPhones = [];
  List<String> listNotes = [];

  double amount = 0;

  void clearParticipantsForm() {
    listEmails.clear();
    listAmounts.clear();
    listPhones.clear();
    listNotes.clear();
  }

  Future<FormData?> sendRequest(BuildContext context) async {
    final cubit = context.read<SplitbillCubit>();
    double totalAmount = 0;

    clearParticipantsForm();

    for (var friendEntry in cubit.friendEntries) {
      final splitAmountText = friendEntry.splitAmountController.text;
      final splitAmount = removeCurrencyFormat(splitAmountText) ?? 0;
      totalAmount += splitAmount;

      listEmails.add(friendEntry.emailController.text);
      listAmounts.add(splitAmount.toString());
      listPhones.add(friendEntry.phoneController.text);
      listNotes.add(friendEntry.noteController.text);
    }

    if (totalAmount < amount) {
      _toast(
          "The total amount from participants is less than the specified bill amount.");
      return null;
    } else if (totalAmount > amount) {
      _toast(
          "The total amount from participants exceeds the specified bill amount.");
      return null;
    }

    FormData formData = FormData.fromMap({
      "to_email[]": listEmails.toList(),
      "total_amount_bill[]": listAmounts.toList(),
      "phone_number[]": listPhones.toList(),
      "note[]": listNotes.toList()
    });

    return formData;
  }

  Future _toast(String? message, [Color color = AppColors.red]) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: color,
        toastGravity: ToastGravity.BOTTOM,
        textColor: AppColors.neutralN140);
  }

  @override
  void initState() {
    super.initState();
    amount = widget.data.amountTotal;
    noteController.text = widget.data.title;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplitbillCubit(),
        ),
        BlocProvider(
          create: (context) => SplitBillBloc(),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppbarCustom(
            title: LocaleKeys.split_bill_title.tr(),
            onPressed: () {
              context.read<SplitbillCubit>().clearFriendEntries();
              Navigator.pop(context);
            },
          ),
          body: WillPopScope(
            onWillPop: () async {
              context.read<SplitbillCubit>().clearFriendEntries();
              Navigator.pop(context);
              return true;
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.form_title_set_amount.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.neutralN120,
                    ),
                    child: Text(
                      formatCurrencyNonDecimal(amount),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeX,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutralN30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    LocaleKeys.form_title_note.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  const SizedBox(height: 8),
                  FieldCustom(
                    controller: noteController,
                    hintText: LocaleKeys.form_hint_text_note.tr(),
                    maxLines: 1,
                    readOnly: true,
                    enabled: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeM,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    LocaleKeys.split_bill_split_with.tr(),
                    style: GoogleFonts.inter(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  const SizedBox(height: 8),
                  BlocBuilder<SplitbillCubit, SplitbillState>(
                    builder: (context, state) {
                      if (state is AddWidgetSplit) {
                        return Column(
                          children: [
                            for (var i = 0; i < state.friendEntries.length; i++)
                              Column(
                                children: [
                                  SplitBillWith(
                                    friendEntry: state.friendEntries[i],
                                    onDelete: () => context
                                        .read<SplitbillCubit>()
                                        .removeFriendEntry(i),
                                  ),
                                  const SizedBox(height: 18),
                                ],
                              ),
                          ],
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                  const SizedBox(height: 18),
                  BlocBuilder<SplitbillCubit, SplitbillState>(
                    builder: (context, state) {
                      return TextButton(
                        onPressed: () {
                          context.read<SplitbillCubit>().addWidgetSplit();
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add Participant",
                              style: TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                fontWeight: FontWeight.bold,
                                color: AppColors.orange,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.add_circle_outline,
                              color: AppColors.orange,
                              size: 24,
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BlocListener<SplitBillBloc, SplitBillState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loading: () => showLoadingDialog(context),
                success: (data) {
                  hideDialog(context);
                  clearParticipantsForm();
                  context.read<SplitbillCubit>().clearFriendEntries();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailSplitBillPage(
                            splitBillData: widget.data, billItems: data),
                      ),
                      (route) => false);
                },
                error: (error) {
                  error.maybeWhen(
                    orElse: () {},
                    unprocessableEntity: (reasons) {
                      String errorMessage = reasons?.message ?? '';
                      List<dynamic> errorMessages = reasons?.errors?.values
                              .map((valueList) =>
                                  valueList.isNotEmpty ? valueList[0] : '')
                              .toList() ??
                          [];

                      String fullErrorMessage =
                          '$errorMessage ${errorMessages[0]}';

                      _toast(fullErrorMessage);
                    },
                    badRequest: (reason) => eLog(reason),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: BtnPrimary(
                title: LocaleKeys.button_split_bill.tr(),
                onTap: () => sendRequest(context).then((value) {
                  if (value != null) {
                    FormData data = value;
                    context.read<SplitBillBloc>().add(
                        SplitBillEvent.addSplitBill(
                            splitId: widget.data.id, formData: value));
                  }
                }),
              ),
            ),
          ),
        );
      }),
    );
  }
}
