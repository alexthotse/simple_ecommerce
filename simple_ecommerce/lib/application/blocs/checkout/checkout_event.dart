
part of 'checkout_bloc.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object> get props => [];
}

class LoadCards extends CheckoutEvent {
  const LoadCards();
}

class AddCard extends CheckoutEvent {
  final CardModel card;
  final String email;

  const AddCard({required this.card, required this.email});

  @override
  List<Object> get props => [card, email];
}

class RemoveCard extends CheckoutEvent {
  final CardModel card;

  const RemoveCard({required this.card});

  @override
  List<Object> get props => [card];
}
