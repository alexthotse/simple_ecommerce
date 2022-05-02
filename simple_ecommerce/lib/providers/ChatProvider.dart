import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_ecommerce/screens/chat/components/body.dart';

import '../models/login_response_model.dart';

class ChatProvider with ChangeNotifier {
  Future<void> saveChat(String email, Message message) async {
    final response = await http.post(
      Uri.parse("http://localhost:5050/chat/" + email),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        // 'robot': robot,
        'message': message.text,
        'date': message.date.toString(),
        'isSenByMe': message.isSentByMe.toString(),
      }),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      notifyListeners();
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create request.');
    }
  }
}
