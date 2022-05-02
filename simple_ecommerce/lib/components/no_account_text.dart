import 'package:flutter/material.dart';
import 'package:simple_ecommerce/constants.dart';
import 'package:simple_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:simple_ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:simple_ecommerce/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpScreen(),
            ),

          );
            },
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
