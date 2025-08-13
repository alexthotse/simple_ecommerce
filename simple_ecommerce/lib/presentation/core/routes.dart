import 'package:flutter/widgets.dart';

// Import all screens from their new locations
import 'package:simple_ecommerce/presentation/features/splash/splash_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/sign_in_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/sign_up_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/forgot_password_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/login_success_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/complete_profile_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/otp_screen.dart';
import 'package:simple_ecommerce/presentation/features/cart/cart_screen.dart';
import 'package:simple_ecommerce/presentation/features/product_catalog/home_screen.dart';
import 'package:simple_ecommerce/presentation/features/product_catalog/details_screen.dart';
import 'package:simple_ecommerce/presentation/features/profile/profile_screen.dart';
import 'package:simple_ecommerce/presentation/features/chat/chat_screen.dart';
import 'package:simple_ecommerce/presentation/features/checkout/credit_card_screen.dart';

// This import is problematic because it's a component, not a screen.
// For now, I will update its path. This highlights the need for refactoring the static email access.
import 'package:simple_ecommerce/presentation/features/auth/components/sign_form.dart';


// WE USE NAME ROUTES
// All our routes will be avaiable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: ((context) => SplashScreen()),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(email: SignForm.email),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(email: SignForm.email),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(email: SignForm.email),
  ChatScreen.routeName: ((context) => ChatScreen()),
  CreditCardScreen.routeName: (context) => CreditCardScreen(),
};
