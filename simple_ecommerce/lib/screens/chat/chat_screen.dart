import 'package:flutter/material.dart';
import 'package:simple_ecommerce/screens/chat/components/body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   ,
      //   title: AppBar().title,
      //   centerTitle: true,
      // ),
      body: Body(),
    );
  }
}
