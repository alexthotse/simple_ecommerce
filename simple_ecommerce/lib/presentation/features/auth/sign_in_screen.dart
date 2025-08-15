import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/features/auth/widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SignInBody(),
    );
  }
}
