import 'dart:convert';
import 'package:pocketbase/pocketbase.dart';
import 'package:simple_ecommerce/domain/repositories/chat_repository.dart';
import 'package:simple_ecommerce/domain/models/message.dart';
import 'package:http/http.dart' as http;

class ChatRepositoryImpl implements ChatRepository {
  final PocketBase pb;

  ChatRepositoryImpl(this.pb);

  @override
  Future<void> sendMessage(String email, Message message) async {
    final response = await http.post(
      Uri.parse("http://localhost:5050/chat/$email"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'message': message.text,
        'date': message.date.toString(),
        'isSenByMe': message.isSentByMe.toString(),
      }),
    );

    if (response.statusCode == 200) {
      // Message sent successfully
    } else {
      throw Exception('Failed to send message: ${response.statusCode}');
    }
  }
}