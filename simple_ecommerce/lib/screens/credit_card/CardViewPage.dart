import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/screens/credit_card/components/CardView.dart';
import 'package:simple_ecommerce/models/CardModel.dart';
import 'package:simple_ecommerce/providers/CardProvider.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class CardViewPage extends StatefulWidget {
  final CardModel card;

  const CardViewPage({Key? key, required this.card}) : super(key: key);

  @override
  _CardViewPageState createState() => _CardViewPageState();
}

class _CardViewPageState extends State<CardViewPage> {
  void onRemove(card) {
    Provider.of<CardProvider>(context).removeCard(card);

    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.2;
    double cardHeight = 250;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Select Card',
          style: TextStyle(color: Colors.blueGrey),
        ),
        elevation: 0,
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
      ),
      body: Center(
        child: SizedBox(
          width: width,
          height: MediaQuery.of(context).size.height / 1.4,
          child: Stack(
            alignment: Alignment(0, -0.5),
            children: <Widget>[
              Transform.rotate(
                angle: math.pi / 2,
                child: Container(
                  padding: EdgeInsets.all(32),
                  width: MediaQuery.of(context).size.height / 1.4,
                  height: width - 10,
                  decoration: BoxDecoration(
                    color: Color(0xff353A85),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // boxShadow: shadow,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('CREDIT CARD',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 35,
                          width: 50,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text('4452 - 8645 - 4524 - 2413',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 64,
                child: Container(
                  height: cardHeight,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xffA647DD),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // boxShadow: shadow,
                  ),
                ),
              ),
              Positioned(
                bottom: 32,
                child: Container(
                  height: cardHeight,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xff454ECA),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // boxShadow: shadow,
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 0,
              //   child: Container(
              //       alignment: Alignment(0, 0),
              //       padding: const EdgeInsets.symmetric(
              //           vertical: 16.0, horizontal: 24.0),
              //       height: cardHeight,
              //       width: width,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //         // boxShadow: shadow,
              //       ),
              //       child: Column(
              //         mainAxisSize: MainAxisSize.min,
              //         crossAxisAlignment: CrossAxisAlignment.stretch,
              //         children: <Widget>[
              //           Row(
              //             mainAxisSize: MainAxisSize.min,
              //             children: <Widget>[
              //               CircleAvatar(
              //                 maxRadius: 16,
              //                 backgroundImage:
              //                     AssetImage('assets/images/Profile Image.png'),
              //               ),
              //               SizedBox(width: 8.0),
              //               Text('Wallet',
              //                   style: TextStyle(
              //                     color: Colors.grey,
              //                   ))
              //             ],
              //           ),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.end,
              //             children: <Widget>[
              //               Text('Card Name',
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 10.0)),
              //               SizedBox(height: 8.0),
              //               Text('4452-8645-4524-2413',
              //                   style: TextStyle(
              //                       color: Colors.grey, fontSize: 10.0))
              //             ],
              //           ),
              //           Flexible(
              //             child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Container(
              //                   width: 90,
              //                   // padding: const EdgeInsets.fromLTRB(
              //                   //     24.0, 16.0, 24.0, 16.0),
              //                   decoration: BoxDecoration(
              //                       borderRadius:
              //                           BorderRadius.all(Radius.circular(5)),
              //                       color: Colors.grey[50]),
              //                   child: TextField(
              //                     textAlign: TextAlign.center,
              //                     keyboardType: TextInputType.number,
              //                     inputFormatters: [
              //                       LengthLimitingTextInputFormatter(3),
              //                     ],
              //                     decoration: InputDecoration(
              //                         contentPadding: EdgeInsets.zero,
              //                         hintText: 'CVV',
              //                         hintStyle:
              //                             TextStyle(color: Colors.grey[300]),
              //                         border: InputBorder.none),
              //                   ),
              //                 )),
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Text('This will be deducted',
              //                   style: TextStyle(
              //                       color: Colors.grey, fontSize: 10.0)),
              //               Row(
              //                 mainAxisSize: MainAxisSize.min,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: <Widget>[
              //                   Text(
              //                     '\$ ',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 10.0),
              //                   ),
              //                   Text(
              //                     '90.00',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 20.0),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           )
              //         ],
              //       )),
              // )
            ],
          ),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.transparent,
  //     appBar: AppBar(
  //       centerTitle: true,
  //       foregroundColor: Colors.transparent,
  //       // brightness: Brightness.light,
  //       title: Text(
  //         "Card View",
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       backgroundColor: Colors.brown[400],
  //       elevation: 0,
  //       leading: IconButton(
  //         icon: Icon(
  //           Icons.arrow_back_ios,
  //           color: Colors.black45,
  //           size: 20,
  //         ),
  //         onPressed: () {
  //           Navigator.of(context).pop(true);
  //         },
  //       ),
  //       actions: <Widget>[
  //         IconButton(
  //           icon: Icon(
  //             Icons.delete,
  //             color: Colors.black45,
  //           ),
  //           onPressed: () {
  //             onRemove(widget.card);
  //           },
  //         )
  //       ],
  //     ),
  //     body: SafeArea(
  //       child: Padding(
  //         padding: EdgeInsets.all(20),
  //         child: Transform.translate(
  //           offset: Offset.fromDirection(0, 15),
  //           child: Container(
  //             height: 210,
  //             child: CardView(widget.card),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
