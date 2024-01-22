import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_account_model.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/account_bank.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ModalBottomSelectAccountBank extends StatefulWidget {
  const ModalBottomSelectAccountBank({super.key});

  @override
  State<ModalBottomSelectAccountBank> createState() =>
      _ModalBottomSelectAccountBankState();
}

class _ModalBottomSelectAccountBankState
    extends State<ModalBottomSelectAccountBank> {
  final ScrollController scrollController = ScrollController();
  BankAccountModel? selectedAccount;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CardAccountBloc()..add(const CardAccountEvent.getCards()),
      child: Container(
        height: AppScreens.height * 0.6,
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/atm"),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.orange,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Add Another Bank Account",
                          style: TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            color: AppColors.orange,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.orange,
                      size: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                LocaleKeys.text_saved_account.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<CardAccountBloc, CardAccountState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => SpinKitCircle(
                      color: AppColors.primaryColors,
                    ),
                    loading: () => SpinKitCircle(
                      color: AppColors.primaryColors,
                    ),
                    successList: (data) => Column(
                      children: data
                          .map((item) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedAccount = item;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: BoxDecoration(
                                    color: item == selectedAccount
                                        ? AppColors.red.withOpacity(0.37)
                                        : AppColors.neutralN130,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: AccountBank(
                                      bankAccountModel: item, isForm: false),
                                ),
                              ))
                          .toList(),
                    ),
                  );
                },
              ),
              // ListView.builder(
              //   controller: scrollController,
              //   shrinkWrap: true,
              //   itemCount: 10,
              //   itemBuilder: (context, index) {
              //     return Container(
              //       padding: const EdgeInsets.all(12),
              //       margin: const EdgeInsets.only(bottom: 15),
              //       decoration: BoxDecoration(
              //         color: AppColors.neutralN130,
              //         borderRadius: BorderRadius.circular(6),
              //       ),
              //       child: AccountBank(
              //           accountBankModel: DummyService.listAccount[1]),
              //     );
              //   },
              // ),
              const SizedBox(
                height: 25,
              ),
              BtnPrimary(
                title: LocaleKeys.button_choose_bank.tr(),
                onTap: () {
                  Navigator.pop(context, selectedAccount);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
