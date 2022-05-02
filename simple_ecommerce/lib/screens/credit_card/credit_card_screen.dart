import 'package:flutter/material.dart';
import 'package:simple_ecommerce/models/CardModel.dart';
import 'package:simple_ecommerce/screens/credit_card/components/body.dart';
import 'package:simple_ecommerce/screens/sign_in/components/sign_form.dart';
// import '';


class CreditCardScreen extends StatelessWidget {

  static String routeName = 'credit_card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: Body(email: SignForm.email),
    );
  }
}

