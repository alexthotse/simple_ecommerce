import 'package:simple_ecommerce/domain/models/CardModel.dart';

abstract class CheckoutRepository {
  Future<List<CardModel>> loadCards();
  Future<void> addCard(CardModel card, String email);
  Future<void> removeCard(CardModel card);
}