import 'package:flutter/material.dart';
import 'package:simple_ecommerce/screens/credit_card/CardViewPage.dart';
import 'package:simple_ecommerce/screens/credit_card/components/CardView.dart';
import 'package:simple_ecommerce/models/CardModel.dart';

class CardList extends StatelessWidget {
  final List<CardModel> cards;
  const CardList({Key? key, required this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        addRepaintBoundaries: true,
        scrollDirection: Axis.horizontal,
        children: getChildrenCards(context),
      ),
    );
  }

  List<Widget> getChildrenCards(context) {
    return cards
        .map((card) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardViewPage(card: card)));
              },
              child: CardView(card),
            ))
        .toList();
  }
}
