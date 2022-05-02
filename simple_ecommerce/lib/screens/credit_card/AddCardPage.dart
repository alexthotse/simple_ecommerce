import 'package:flutter/services.dart';
import 'package:simple_ecommerce/components/custom_suffix_icon.dart';
import 'package:simple_ecommerce/models/CardModel.dart';
import 'package:simple_ecommerce/providers/CardProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/screens/credit_card/components/color_list.dart';
import 'package:simple_ecommerce/screens/sign_up/components/sign_up_form.dart';
import 'dart:math' as math;
import '../sign_in/components/sign_form.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key, required this.email}) : super(key: key);

  final String email;

  @override
  _AddCardPageState createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  Color active = const Color(0xff353a85);

  TextEditingController idController = TextEditingController();
  // TextEditingController cardName = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController bankName = TextEditingController();
  TextEditingController availableBalanceController = TextEditingController();
  TextEditingController currencyController = TextEditingController();

  //
  // New add ons
  TextEditingController cardNumber = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController cardHolder = TextEditingController();
  TextEditingController availableBalance = TextEditingController();
  TextEditingController currency = TextEditingController();
  ScrollController scrollController = ScrollController();
  // get availableController => TextEditingController();
  Color typeDropdownValue2 = Colors.blueGrey;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection.index == 1) {
        FocusScope.of(context).requestFocus(FocusNode());
      }
    });
  }

  String convertCardNumber(String src, String divider) {
    String newStr = '';
    int step = 4;
    for (int i = 0; i < src.length; i += step) {
      newStr += src.substring(i, math.min(i + step, src.length));
      if (i + step < src.length) newStr += divider;
    }
    return newStr;
  }

  String convertMonthYear(String month, String year) {
    if (month.isNotEmpty) {
      return month + '/' + year;
    } else {
      return '';
    }
  }

  void onAdd(var cardProvider) {
    CardModel card = CardModel(
        id: idController.text,
        // cardName: cardName.text,
        cardNumber: cardNumber.text,
        cardHolder: cardHolder.text,
        bankName: bankName.text,
        availableBalance: availableBalance.text,
        currency: currency.text,
        month: month.text,
        year: year.text,
        color: active,
        cvv: cvv.text);

    // cardProvider.addCard(card, const SignForm().newEmailValue());
    cardProvider.addCard(card, widget.email);

    // Provider.of<CardProvider>(context).addCard(card);

    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    var cardProvider = context.watch<CardProvider>();
//     Widget addThisCard = InkWell(
// //      onTap: () => Navigator.of(context)
// //          .push(MaterialPageRoute(builder: (_) => ViewProductPage())),
//       child: Container(
//         height: 80,
//         width: MediaQuery.of(context).size.width / 1.5,
//         decoration: BoxDecoration(
//             // gradient: mainButton,
//             color: Colors.blueGrey[400],
//             boxShadow: [
//               BoxShadow(
//                 color: Color.fromRGBO(0, 0, 0, 0.16),
//                 offset: Offset(0, 5),
//                 blurRadius: 10.0,
//               )
//             ],
//             borderRadius: BorderRadius.circular(9.0)),
//         child: Center(
//           child: Text(
//             "Add This Card",
//             style: const TextStyle(
//                 color: Color.fromARGB(255, 179, 219, 32),
//                 fontWeight: FontWeight.w600,
//                 fontStyle: FontStyle.normal,
//                 fontSize: 20.0),
//             // onPressed: () => onAdd(cardProvider),
//           ),
//         ),
//       ),
//     );

    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: LayoutBuilder(
        builder: (context, constraints) => GestureDetector(
          onPanDown: (details) {},
          behavior: HitTestBehavior.opaque,
          child: SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Container(
              margin: const EdgeInsets.only(top: kToolbarHeight),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Add Card',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      CloseButton(),
                    ],
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(32.0),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Credit Card',
                              style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              bankName.text,
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 40,
                              color: Colors.amberAccent,
                            ),
                            // Add Card Holder Here
                            Flexible(
                              child: Center(
                                child: Text(cardHolder.text,
                                    style: TextStyle(
                                        color: Colors.amberAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0)),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(convertMonthYear(month.text, year.text),
                                style: TextStyle(
                                    color: Colors.amberAccent,
                                    fontWeight: FontWeight.bold)),
                            Text(cvv.text,
                                style: TextStyle(
                                    color: Colors.amberAccent,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    convertCardNumber(cardNumber.text, '-'),
                                    style: TextStyle(
                                        color: Colors.amberAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('\$',
                                          style: TextStyle(
                                              color: Colors.amber,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.0)),
                                      Text(availableBalance.text,
                                          style: TextStyle(
                                              color: Colors.amber,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                        currency.text,
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                ]),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: colorSelecter(),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    height: 275,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        // boxShadow: shadow,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 55,
                          padding: EdgeInsets.only(left: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.blueGrey,
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(16)
                            ],
                            controller: cardNumber,
                            onChanged: (val) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              // border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,

                              labelText: 'Card Number',
                              hintText: 'Card Number',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 179, 219, 32)),
                              suffixIcon: CustomSuffixIcon(
                                svgIcon: "assets/icons/credit-card-solid.svg",
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                height: 55,
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  controller: month,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Month',
                                    hintText: 'Month',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 219, 32)),
                                  ),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Flexible(
                              child: Container(
                                height: 55,
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  controller: year,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Year',
                                    hintText: 'Year',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 219, 32)),
                                  ),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Flexible(
                              child: Container(
                                height: 55,
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  controller: cvv,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'CVV',
                                    hintText: 'CVV',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 219, 32)),
                                  ),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                height: 55,
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(7)
                                  ],
                                  controller: availableBalance,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Available Balance',
                                    hintText: 'Available balance in card',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 219, 32)),
                                    suffixIcon: const CustomSuffixIcon(
                                      svgIcon: "assets/icons/wallet-solid.svg",
                                    ),
                                  ),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Flexible(
                              child: Container(
                                height: 55,
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.text,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(3)
                                  ],
                                  controller: currency,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Currency',
                                    hintText: 'Currency',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 219, 32)),
                                    suffixIcon: CustomSuffixIcon(
                                      svgIcon:
                                          "assets/icons/dollar-sign-solid.svg",
                                    ),
                                  ),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                height: 55,
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.text,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(12)
                                  ],
                                  controller: bankName,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'bankName',
                                    hintText: 'bankName',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 179, 219, 32)),
                                    suffixIcon: CustomSuffixIcon(
                                      svgIcon:
                                          "assets/icons/piggy-bank-solid.svg",
                                    ),
                                  ),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                        Container(
                          height: 55,
                          // padding: EdgeInsets.only(left: 16.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.blueGrey,
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            controller: cardHolder,
                            decoration: InputDecoration(
                              // border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelText: 'Card Holder',
                              hintText: 'Name on card',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 179, 219, 32)),
                              suffixIcon: CustomSuffixIcon(
                                svgIcon: "assets/icons/id-card-solid.svg",
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 24.0),
                  // Center(
                  //     child: Padding(
                  //   padding: EdgeInsets.only(bottom: 20),
                  //   child: addThisCard,
                  // )),
                  SizedBox(height: 24.0),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.infinity,
                    padding: EdgeInsets.all(15),
                    color: Colors.amber[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Add This Card',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => onAdd(cardProvider),
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    color: Colors.blue[300],
                    child: Text(
                      'By continuing your confirm that you agree \nwith our Term and Condition.\n\nWHATEVER YOU DO, IN GOD\'S NAME: \nPLEASE DON\'T FILL IN REAL DETAILS\nDUMMY PROJECT',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }

  DropdownButton<Color> colorSelecter() {
    return
        // return Row(
        //                 // bool c = true,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   const Color(0xff353a85),
        //                   const Color(0xffA647DD),
        //                   const Color.fromARGB(255, 77, 219, 219),
        //                   Colors.blueGrey
        //                 ]
        //                     .map((c) => InkWell(
        //                           onTap: () {
        //                             setState(() {
        //                               active = c;
        //                               // active = c ?? Colors.red;
        //                             });
        //                           },
        //                           child: Transform.scale(
        //                               child: Padding(
        //                                 padding: const EdgeInsets.all(8.0),
        //                                 child: ColorOption(c),
        //                                 // child: ColorOption(c ?? Colors.red),
        //                               ),
        //                               scale: active == c ? 1.2 : 1),
        //                         ))
        //                     .toList(),
        //               );
        DropdownButton<Color>(
      hint: const Text("Color"),
      value: typeDropdownValue2,
      // items: ['Electronics', 'Furniture'].toList(),
      items: <Color>[
        const Color(0xff353a85),
        const Color(0xffA647DD),
        const Color.fromARGB(255, 77, 219, 219),
        Colors.blueGrey
      ].map<DropdownMenuItem<Color>>((Color value) {
        return DropdownMenuItem<Color>(
          value: value,
          //this is the color box in the
          child: Container(
            width: 20,
            height: 20,
            color: value,
          ),
        );
      }).toList(),
      icon: const Icon(Icons.keyboard_arrow_down),

      onChanged: (newValue) {
        setState(() {
          active = newValue!;
          typeDropdownValue2 = newValue;
        });
      },
      // width: 180,
      // height: 50,
      // textStyle: TextStyle(
      //   fontFamily: 'Poppins',
      //   color: Colors.black,
      // ),
      // hintText: 'Filter',
      // fillColor: Colors.white,
      // elevation: 2,
      // borderColor: Colors.transparent,
      // borderWidth: 0,
      // borderRadius: 0,
      // margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
      // hidesUnderline: true,
    );
  }
}
