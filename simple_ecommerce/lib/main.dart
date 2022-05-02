import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/constants.dart';
import 'package:simple_ecommerce/providers/CardProvider.dart';
import 'package:simple_ecommerce/providers/ChatProvider.dart';
import 'package:simple_ecommerce/providers/RegisterProvider.dart';
import 'package:simple_ecommerce/routes.dart';
import 'package:simple_ecommerce/screens/splash/splash_screen.dart';
import 'package:simple_ecommerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CardProvider>(
          create: (context) => CardProvider(),
        ),

        ChangeNotifierProvider<RegisterProvider>(
          create: (context) => RegisterProvider(),
        ),
        //
        ChangeNotifierProvider<ChatProvider>(
          create: (context) => ChatProvider(),
        ),
        //
        // ChangeNotifierProvider<ViewSalePageController>(
        //   create: (context) => ViewSalePageController(),
        // ),

        // ChangeNotifierProvider<RegisterUserController>(
        //   create: (context) => RegisterUserController(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Shop',
        theme: theme(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}

