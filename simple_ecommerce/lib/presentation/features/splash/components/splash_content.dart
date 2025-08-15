import 'package:flutter/material.dart';

import 'package:simple_ecommerce/presentation/core/constants.dart';
import 'package:simple_ecommerce/presentation/core/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    this.text,
    this.image,
  });
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "SimpleShop",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        image!.isNotEmpty
            ? Image.asset(
                image!,
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(235),
              )
            : const Placeholder(
                fallbackHeight: 265,
                fallbackWidth: 235,
              ),
      ],
    );
  }
}