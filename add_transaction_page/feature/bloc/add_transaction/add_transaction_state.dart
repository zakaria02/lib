part of 'add_transaction_bloc.dart';

abstract class AddTransactionState extends Equatable {
  @override
  List<Object> get props => [];
}

class AddTransactionInitial extends AddTransactionState {}

class AddTransactionLoading extends AddTransactionState {}

class AddTransactionSuccess extends AddTransactionState {}

class AddTransactionFailure extends AddTransactionState {}
