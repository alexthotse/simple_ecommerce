import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_ecommerce/constants.dart';

ThemeData theme() {
  return ThemeData(
    //App theme
    scaffoldBackgroundColor: Colors.brown[100],
    // fontFamily: Google,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // if you are using latest version of flutter then label text and hint text shown like this
    // if you are using flutter less then 1.20.* then maybe this is not working properly
    // if we define our floatingLabelBehaviour in our theme then it's not applied
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyLarge: TextStyle(color: kTextColor), // Formerly bodyText1
    bodyMedium: TextStyle(color: kTextColor), // Formerly bodyText2
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white60,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Color(0XFF8B888B), fontSize: 18),
  );
}
