import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/data/models/bank/bank_account_model.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountBank extends StatelessWidget {
  final BankAccountModel bankAccountModel;
  final bool isForm;
  final bool showDelete;
  const AccountBank(
      {super.key,
      required this.bankAccountModel,
      this.isForm = true,
      this.showDelete = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        UICacheNetworkImage(
          imageUrl: bankAccountModel.bankImage!,
          size: const Size(60, 40),
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                bankAccountModel.bankName!,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeM,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Flexible(
                child: Text(
                  "${bankAccountModel.accountNumber} a.n ${bankAccountModel.accountName}",
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isForm) const Icon(Icons.arrow_drop_down),
        if (showDelete)
          InkWell(
            onTap: () {
              context.read<CardAccountBloc>().add(CardAccountEvent.deleteCard(
                  cardId: bankAccountModel.bankAccountId!));
            },
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.delete_forever),
            ),
          )
      ],
    );
  }
}
