import 'dart:convert';
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_ecommerce/domain/models/CardModel.dart';
import 'package:simple_ecommerce/domain/repositories/checkout_repository.dart';
import 'package:http/http.dart' as http; // Assuming http is used for card operations

class CheckoutRepositoryImpl implements CheckoutRepository {
  final PocketBase pb;

  CheckoutRepositoryImpl(this.pb);

  @override
  Future<List<CardModel>> loadCards() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var result = prefs.getStringList('cards');

    if (result != null) {
      return result.map((f) => CardModel.fromJson(json.decode(f))).toList();
    }
    return [];
  }

  @override
  Future<void> addCard(CardModel card, String email) async {
    final response = await http.post(
      Uri.parse("http://localhost:5050/card/$email"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id': card.id,
        'cardHolder': card.cardHolder,
        'bankName': card.bankName,
        'cardNumber': card.cardNumber,
        'currency': card.month, // Still keeping the original bug for now
        'month': card.year, // Still keeping the original bug for now
        'year': card.currency, // Still keeping the original bug for now
        'available': card.availableBalance,
        'color': card.color?.value
      }),
    );

    if (response.statusCode == 201) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> myCards = prefs.getStringList('cards') ?? [];
      myCards.add(json.encode(card.toJson()));
      await prefs.setStringList('cards', myCards);
    } else {
      throw Exception('Failed to add card: ${response.statusCode}');
    }
  }

  @override
  Future<void> removeCard(CardModel card) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> myCards = prefs.getStringList('cards') ?? [];
    myCards.removeWhere((element) => CardModel.fromJson(json.decode(element)).cardNumber == card.cardNumber);
    await prefs.setStringList('cards', myCards);
  }
}