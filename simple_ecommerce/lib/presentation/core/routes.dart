import 'package:flutter/widgets.dart';
import 'package:simple_ecommerce/presentation/features/chat/chat_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/forgot_password_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/login_success_screen.dart';
// import 'package:simple_ecommerce/presentation/features/auth/components/sign_form.dart'; // Removed as SignForm is not directly used here // This import might be removed later if not used
import 'package:simple_ecommerce/presentation/features/auth/sign_in_screen.dart';
import 'package:simple_ecommerce/presentation/features/splash/splash_screen.dart';

import 'package:simple_ecommerce/presentation/features/cart/cart_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/complete_profile_screen.dart';
import 'package:simple_ecommerce/presentation/features/product_catalog/details_screen.dart';
import 'package:simple_ecommerce/presentation/features/product_catalog/home_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/otp_screen.dart';
import 'package:simple_ecommerce/presentation/features/profile/profile_screen.dart';
import 'package:simple_ecommerce/presentation/features/checkout/credit_card_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/sign_up_screen.dart'; // Corrected import

// WE USE NAME ROUTES
// All our routes will be avaiable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: ((context) => SplashScreen()),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(), // Removed email parameter
  SignUpScreen.routeName: (context) => SignUpScreen(), // Corrected to SignUpScreen
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(), // Removed email parameter
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(), // Removed email parameter
  ChatScreen.routeName: ((context) => ChatScreen()),
  CreditCardScreen.routeName: (context) => CreditCardScreen(),
};
