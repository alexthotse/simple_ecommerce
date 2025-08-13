import 'package:flutter/material.dart';
import 'package:simple_ecommerce/screens/credit_card/credit_card_screen.dart';
import 'package:simple_ecommerce/screens/home/home_screen.dart';
import 'package:simple_ecommerce/screens/sign_in/sign_in_screen.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/universal-access-solid.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/gears-solid.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/question-solid.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Add payment",
            icon: "assets/icons/credit-card-solid.svg",
            press: () {
              Navigator.pushNamed(context, CreditCardScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/arrow-right-from-bracket-solid.svg",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
