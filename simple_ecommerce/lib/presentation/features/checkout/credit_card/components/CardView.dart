import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_ecommerce/models/CardModel.dart';

class CardView extends StatefulWidget {
  final CardModel card;

  CardView(this.card) : super();

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.2;
    double cardHeight = 250;
    return Positioned(
      // 4th card
      bottom: 0,
      child: Container(
        alignment: Alignment(0, 0),
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        height: cardHeight,
        width: width,
        decoration: BoxDecoration(
          color: widget.card.color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // boxShadow: shadow,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 25,
                  backgroundImage:
                      AssetImage('assets/images/Profile Image.png'),
                ),
                SizedBox(width: 8.0),
                Text(widget.card.cardHolder + "'s Wallet",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(widget.card.bankName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0)),
                SizedBox(height: 8.0),
                Text(
                  widget.card.cardNumber,
                  style: TextStyle(color: Colors.amberAccent, fontSize: 10.0),
                )
              ],
            ),
            Flexible(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 90,
                  // height: 65,
                  // padding: const EdgeInsets.fromLTRB(
                  //     24.0, 16.0, 24.0, 16.0),
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.zero,
                      color: widget.card.color),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(2),
                    ],
                    decoration: InputDecoration(
                      // border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'CVV',
                      hintText: widget.card.cvv,
                      hintStyle: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Available Amount',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '\$ ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.0),
                    ),
                    Text(
                      widget.card.availableBalance,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      widget.card.currency,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.0),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        // Flexible(
        // ),
      ),
    );
  }
}
