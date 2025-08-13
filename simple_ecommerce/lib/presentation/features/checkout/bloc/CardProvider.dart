// Dart SDK imports
import 'dart:collection';
import 'dart:convert';
// Flutter SDK and directories
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_ecommerce/models/CardModel.dart';
import 'package:http/http.dart' as http;

// Backend communications
class CardProvider with ChangeNotifier {
  List<CardModel> cards = [];

  CardProvider() {
    initialState();
  }

  UnmodifiableListView<CardModel> get allCards => UnmodifiableListView(cards);

  void initialState() {
    syncDataWithProvider();
  }

  Future<void> addCard(CardModel _card, String email) async {
    cards.add(_card);

    updateSharedPrefrences();

    final response = await http.post(
      Uri.parse("http://localhost:5050/card/" + email),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        // 'robot': robot,
        'id': _card.id,
        'cardHolder': _card.cardHolder,
        'bankName': _card.bankName,
        'cardNumber': _card.cardNumber,
        'currency': _card.month,
        'month': _card.year,
        'year': _card.currency,
        'available': _card.availableBalance,
        'color': _card.color?.value
      }),
    );

    print(response.statusCode);

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      notifyListeners();
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create request.');
    }
  }

  void removeCard(CardModel _card) {
    cards.removeWhere((card) => card.cardNumber == _card.cardNumber);

    updateSharedPrefrences();

    notifyListeners();
  }

  int getCardLength() {
    return cards.length;
  }

  Future updateSharedPrefrences() async {
    List<String> myCards = cards.map((f) => json.encode(f.toJson())).toList();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('cards', myCards);
  }

  Future syncDataWithProvider() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var result = prefs.getStringList('cards');

    if (result != null) {
      cards = result.map((f) => CardModel.fromJson(json.decode(f))).toList();
    }

    notifyListeners();
  }
}
