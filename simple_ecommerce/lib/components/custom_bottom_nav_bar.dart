import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_ecommerce/screens/chat/chat_screen.dart';
// import 'package:s';
import 'package:simple_ecommerce/screens/home/home_screen.dart';
import 'package:simple_ecommerce/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
    required this.email,
  }) : super(key: key);

  final String email;
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.blueGrey[400],
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/shop-solid.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, ChatScreen.routeName);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/user-astronaut-solid.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
