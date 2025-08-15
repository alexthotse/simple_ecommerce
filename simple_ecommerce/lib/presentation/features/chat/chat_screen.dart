import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/features/chat/widgets/chat_body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat_screen";

  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store Chat"),
      ),
      body: ChatBody(),
    );
  }
}
