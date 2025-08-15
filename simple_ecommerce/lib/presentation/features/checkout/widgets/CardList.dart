import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/features/checkout/CardViewPage.dart';
import 'package:simple_ecommerce/presentation/features/checkout/widgets/CardView.dart';
import 'package:simple_ecommerce/domain/models/CardModel.dart';

class CardList extends StatelessWidget {
  final List<CardModel> cards;
  const CardList({super.key, required this.cards});

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
