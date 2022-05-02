import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_ecommerce/components/custom_suffix_icon.dart';
import 'package:simple_ecommerce/components/default_button.dart';
import 'package:simple_ecommerce/components/form_error.dart';
import 'package:simple_ecommerce/components/no_account_text.dart';
import 'package:simple_ecommerce/components/social_card.dart';
import 'package:simple_ecommerce/constants.dart';
import 'package:simple_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:simple_ecommerce/screens/sign_in/components/sign_form.dart';
import 'package:simple_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \n or continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/google-brands.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/twitter-brands.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/github-brands.svg",
                        press: () {},
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                NoAccountText(),
                // Spacer(),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition.\n\nPLEASE DON\'T FILL IN REAL DETAILS\nDUMMY PROJECT',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                // SizedBox(height: SizeConfig.screenHeight! * 0.1),
                // Spacer(),
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
