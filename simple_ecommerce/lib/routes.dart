import 'package:flutter/widgets.dart';
import 'package:simple_ecommerce/screens/chat/chat_screen.dart';
import 'package:simple_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:simple_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:simple_ecommerce/screens/sign_in/components/sign_form.dart';
import 'package:simple_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:simple_ecommerce/screens/splash/splash_screen.dart';

import 'package:flutter/widgets.dart';
import 'package:simple_ecommerce/screens/cart/cart_screen.dart';
import 'package:simple_ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:simple_ecommerce/screens/details/details_screen.dart';
import 'package:simple_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:simple_ecommerce/screens/home/home_screen.dart';
import 'package:simple_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:simple_ecommerce/screens/otp/otp_screen.dart';
import 'package:simple_ecommerce/screens/profile/profile_screen.dart';
import 'package:simple_ecommerce/screens/sign_in/components/sign_form.dart';
import 'package:simple_ecommerce/screens/splash/splash_screen.dart';
import 'package:simple_ecommerce/screens/credit_card/credit_card_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// WE USE NAME ROUTES
// All our routes will be avaiable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: ((context) => SplashScreen()),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(email: SignForm.email),
  SignUpScreen.routeName: (context) => SignInScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(email: SignForm.email),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(email: SignForm.email),
  ChatScreen.routeName: ((context) => ChatScreen()),
  CreditCardScreen.routeName: (context) => CreditCardScreen(),
};
