import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/account_billing/account_billing_model.dart';
import 'package:certenz/src/data/services/account_billing/account_billing_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'account_billing_event.dart';
part 'account_billing_state.dart';
part 'account_billing_bloc.freezed.dart';

class AccountBillingBloc
    extends Bloc<AccountBillingEvent, AccountBillingState> {
  AccountBillingBloc() : super(const AccountBillingState.initial()) {
    on<AccountBillingEvent>((event, emit) async {
      await event.when(
        create: (formData) async {
          emit(const AccountBillingState.loading());
          ApiResult<AccountBillingModel> result =
              await AccountBillingService().createBilling(formData: formData);

          result.when(
            success: (data) => emit(AccountBillingState.success(data)),
            failure: (error) => emit(AccountBillingState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(AccountBillingEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<AccountBillingState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
