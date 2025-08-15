
part of 'checkout_bloc.dart';

abstract class CheckoutState extends Equatable {
  const CheckoutState();

  @override
  List<Object> get props => [];
}

class CheckoutInitial extends CheckoutState {}

class CheckoutLoadInProgress extends CheckoutState {}

class CheckoutLoadSuccess extends CheckoutState {
  final List<CardModel> cards;

  const CheckoutLoadSuccess({this.cards = const []});

  @override
  List<Object> get props => [cards];
}

class CheckoutLoadFailure extends CheckoutState {
  final String message;

  const CheckoutLoadFailure({required this.message});

  @override
  List<Object> get props => [message];
}

class CheckoutActionInProgress extends CheckoutState {}

class CheckoutActionSuccess extends CheckoutState {
  final String message;

  const CheckoutActionSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class CheckoutActionFailure extends CheckoutState {
  final String message;

  const CheckoutActionFailure({required this.message});

  @override
  List<Object> get props => [message];
}
