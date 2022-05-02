import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_ecommerce/screens/credit_card/AddCardPage.dart';
import 'package:simple_ecommerce/screens/credit_card/components/CardList.dart';
import 'package:simple_ecommerce/screens/credit_card/components/TransactionView.dart';
import 'package:simple_ecommerce/providers/CardProvider.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/models/TransactionModel.dart';
import '../../../models/CardModel.dart';
import 'CardList.dart';
import 'CardView.dart';
import 'TransactionView.dart';
import 'package:simple_ecommerce/screens/credit_card/AddCardPage.dart';
import 'dart:math' as math;
// import 'package:sliding_card/sliding_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _pageController = PageController(
    viewportFraction: 0.3,
  );

  @override
  Widget build(BuildContext context) {
    var cardProvider = context.watch<CardProvider>();

    double width = MediaQuery.of(context).size.width / 1.2;
    double cardHeight = 250;
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        // systemOverlayStyle: SystemUiOverlayStyle.black,
        centerTitle: true,
        title: Text(
          "Payment Methods",
          style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Color.fromRGBO(238, 241, 242, 1),
        // backgroundColor: Colors.brown[200],
        elevation: 0,
        backgroundColor: Colors.transparent,
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
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.add,
        //       color: Colors.black45,
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => AddCardPage(email: widget.email)));
        //     },
        //   )
        // ],
      ),
      body: Center(
        child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: cardProvider.getCardLength(),
          itemBuilder: (context, index) =>
              _builder(index, cardProvider) ?? addNewCardDialog(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        tooltip: 'Add a new card',
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddCardPage(email: widget.email)));
        },
      ),

      // body: SafeArea(
      // causing serious rednering errors
      //   child: Padding(
      //     padding: EdgeInsets.all(20.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         (Provider.of<CardProvider>(context).getCardLength() > 0
      //             ? Container(
      //                 height: 210,
      //                 child: Consumer<CardProvider>(
      //                   builder: (context, cards, child) => CardList(
      //                     cards: cards.allCards,
      //                   ),
      //                 ))
      //             : Container(
      //                 height: 210,
      //                 decoration: BoxDecoration(
      //                     color: Colors.blue[300],
      //                     borderRadius: BorderRadius.circular(20)),
      //                 child: Align(
      //                   alignment: Alignment.center,
      //                   child: Text(
      //                     "Add your new card click the \n + \n button in the top right.",
      //                     textAlign: TextAlign.center,
      //                     style:
      //                         TextStyle(color: Colors.amber[100], fontSize: 20),
      //                   ),
      //                 ),
      //               )),
      //         SizedBox(
      //           height: 30,
      //         ),

      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Container addNewCardDialog() {
    return Container(
      height: 210,
      decoration: BoxDecoration(
          color: Colors.blue[300], borderRadius: BorderRadius.circular(20)),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Add your new card: click the \n + \n button in the bottom right.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.amber[100], fontSize: 20),
        ),
      ),
    );
  }

  _builder(int index, CardProvider cardProvider) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;

        if (_pageController.position.haveDimensions) {
          value = (_pageController.page! - index);

          if (value >= 0) {
            double _lowerLimit = 0;
            double _upperLimit = pi / 2;

            value = (_upperLimit - (value.abs() * (_upperLimit - _lowerLimit)))
                .clamp(_lowerLimit, _upperLimit);
            value = _upperLimit - value;
            value *= -1;
          }
        } else {
          //Won't work properly in case initialPage in changed in PageController
          if (index == 0) {
            value = 0;
          } else if (index == 1) {
            value = -1;
          }
        }

        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(value),
          alignment: Alignment.center,
          child: Card(card: cardProvider.cards[index]),
        );
      },
      child: Card(card: cardProvider.cards[index]),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key, required this.card}) : super(key: key);

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center,
        // margin: EdgeInsets.all(16),
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        // decoration: BoxDecoration(
        //   color: Colors.blue,
        // ),
        children: [
          CardView(card),
        ]);
  }
}
