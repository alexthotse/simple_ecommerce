import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

class CardModel {
  final dynamic id;
  // final String cardName;
  final String bankName;
  final String cardNumber;
  final String cardHolder;
  final String currency;
  final String month;
  final String year;
  final String availableBalance;
  final Color? color;
  final String cvv;

  CardModel(
      {required this.id,
      // required this.cardName,
      required this.bankName,
      required this.cardNumber,
      required this.cardHolder,
      required this.currency,
      required this.month,
      required this.year,
      required this.availableBalance,
      required this.color,
      required this.cvv});

  Map toJson() => {
        'id': id,
        // 'cardName': cardName,
        'bankName': bankName,
        'cardNumber': cardNumber,
        'cardHolder': cardHolder,
        'currency': currency,
        'month': month,
        'year': year,
        'availableBalance': availableBalance,
        'color': color?.value,
        'cvv': cvv,
      };

  CardModel.fromJson(Map json)
      : id = json['id'],
        // cardName = json['cardName'],
        bankName = json['bankName'],
        cardNumber = json['cardNumber'],
        cardHolder = json['cardHolder'],
        currency = json['currency'],
        month = json['month'],
        year = json['year'],
        // Available
        availableBalance = json['availableBalance'],
        cvv = json['cvv'],
        color = json[Colors.blueGrey[300]];
}
