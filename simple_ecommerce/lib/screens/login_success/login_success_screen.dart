import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_ecommerce/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key, required this.email}) : super(key: key);
  final String email;

  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Body(email: email),
    );
  }
}
