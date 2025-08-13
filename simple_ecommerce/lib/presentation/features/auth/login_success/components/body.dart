import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_ecommerce/components/default_button.dart';
import 'package:simple_ecommerce/screens/home/home_screen.dart';
import 'package:simple_ecommerce/size_config.dart';


class Body extends StatelessWidget {

  const Body({Key? key,required this.email}) : super(key: key);

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight! * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
