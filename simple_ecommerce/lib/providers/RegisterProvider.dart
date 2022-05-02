
import 'dart:collection';
import 'dart:convert';
// Flutter SDK and directories
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/login_response_model.dart';

class RegisterProvider with ChangeNotifier {

  Future<void> registerUser(String email,String password) async {


    final response = await http.post(
      Uri.parse("http://localhost:5050/register/"+email),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        // 'robot': robot,
        'email': email,
        'password': password,
      }),
    );

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


}