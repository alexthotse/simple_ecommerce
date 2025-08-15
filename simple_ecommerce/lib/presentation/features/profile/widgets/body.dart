import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/features/checkout/credit_card_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/sign_in_screen.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("My Account"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Help Center"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.credit_card_outlined),
            title: Text("Add payment"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, CreditCardScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text("Log Out"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
