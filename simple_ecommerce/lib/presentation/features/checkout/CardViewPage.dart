import 'package:flutter/material.dart';
import 'package:simple_ecommerce/domain/models/CardModel.dart';

class CardViewPage extends StatefulWidget {
  final CardModel card;

  const CardViewPage({super.key, required this.card});

  @override
  _CardViewPageState createState() => _CardViewPageState();
}

class _CardViewPageState extends State<CardViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Card'),
      ),
      body: Center(
        child: Placeholder(),
      ),
    );
  }
}
