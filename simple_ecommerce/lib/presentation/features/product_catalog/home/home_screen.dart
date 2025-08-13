import 'package:flutter/material.dart';
import 'package:simple_ecommerce/components/custom_bottom_nav_bar.dart';
import 'package:simple_ecommerce/enums.dart';
import 'package:simple_ecommerce/screens/sign_in/components/sign_form.dart';


import 'components/body.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({Key? key, required this.email}) : super(key: key);
  

  static String routeName = "/home";
  
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(email: email),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
        email: SignForm.email, // type
      ),
    );
  }
}
