import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/core/size_config.dart';
import 'package:simple_ecommerce/presentation/features/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold( // Added const
      body: Body(),
    );
  }
}
