import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/screens/sign_in/components/sign_form.dart';
// import 'package:simple_ecommerce/';
import 'dart:core';
import '../../../providers/ChatProvider.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Message> messages = [
    Message(
      text: 'Yes sure!!',
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
        text: 'Welcome to the store', date: DateTime.now(), isSentByMe: true),
    Message(
      text: 'Come to purchase??',
      date: DateTime.now().subtract(
        const Duration(days: 3, minutes: 4),
      ),
      isSentByMe: true,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    var service = context.watch<ChatProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(
          'Store Chat',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            // Expands the typing area to the bottom
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (messeage) => DateTime(
                messeage.date.year,
                messeage.date.month,
                messeage.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                    child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMd().format(message.date),
                      style: const TextStyle(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                )),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade400,
            child: TextField(
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                hintText: 'Type your message here...',
              ),
              onSubmitted: (text) {
                final message = Message(
                  text: text,
                  date: DateTime.now(),
                  isSentByMe: true,
                );
                setState(() => messages.add(message));
                service.saveChat("user@gmail.com", message);
                // service.saveChat(SignForm().email, message);
              },
            ),
          )
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
