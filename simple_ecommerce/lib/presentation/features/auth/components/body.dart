import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/core/widgets/no_account_text.dart';
import 'package:simple_ecommerce/presentation/core/widgets/social_card.dart';
// import 'package:simple_ecommerce/presentation/features/auth/components/sign_form.dart'; // Removed as SignForm is not directly used here
import 'package:simple_ecommerce/presentation/core/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

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
                      IconButton(
                        icon: Icon(Icons.android),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.android),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.android),
                        onPressed: () {},
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
                  style: Theme.of(context).textTheme.bodySmall,
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
