part of 'splitbill_cubit.dart';

sealed class SplitbillState extends Equatable {
  const SplitbillState();

  @override
  List<Object> get props => [];
}

final class SplitbillInitial extends SplitbillState {}

class SplitbillLoading extends SplitbillState {}

class AddWidgetSplit extends SplitbillState {
  final List<FriendEntry> friendEntries;

  const AddWidgetSplit(this.friendEntries);

  @override
  List<Object> get props => [friendEntries];
}

class IsProsessed extends SplitbillState {
  final bool? isProsessed;

  const IsProsessed(this.isProsessed);
}
