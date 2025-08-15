import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simple_ecommerce/domain/models/CardModel.dart';
import 'package:simple_ecommerce/domain/repositories/checkout_repository.dart';
// For getIt

part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final CheckoutRepository _checkoutRepository;

  CheckoutBloc({required CheckoutRepository checkoutRepository})
      : _checkoutRepository = checkoutRepository,
        super(CheckoutInitial()) {
    on<LoadCards>((event, emit) async {
      emit(CheckoutLoadInProgress());
      try {
        final cards = await _checkoutRepository.loadCards();
        emit(CheckoutLoadSuccess(cards: cards));
      } catch (e) {
        emit(CheckoutLoadFailure(message: e.toString()));
      }
    });

    on<AddCard>((event, emit) async {
      emit(CheckoutActionInProgress());
      try {
        await _checkoutRepository.addCard(event.card, event.email);
        emit(const CheckoutActionSuccess(message: "Card added successfully"));
        add(const LoadCards()); // Reload cards after adding
      } catch (e) {
        emit(CheckoutActionFailure(message: e.toString()));
      }
    });

    on<RemoveCard>((event, emit) async {
      emit(CheckoutActionInProgress());
      try {
        await _checkoutRepository.removeCard(event.card);
        emit(const CheckoutActionSuccess(message: "Card removed successfully"));
        add(const LoadCards()); // Reload cards after removing
      } catch (e) {
        emit(CheckoutActionFailure(message: e.toString()));
      }
    });
  }
}