import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/features/auth/widgets/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete Profile"),
      ),
      body: Body(),
    );
  }
}
