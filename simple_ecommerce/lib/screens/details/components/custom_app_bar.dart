import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_ecommerce/constants.dart';

import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  CustomAppBar({required this.rating});

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(30),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: kPrimaryColor,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
            Spacer(),
            // Expanded(
            //   child: Container(
            //     padding: EdgeInsets.only(
            //       left: 40,
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.blue[200],
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     child: Row(
            //       children: [
            //         Text(
            //           "$rating",
            //           style: const TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //         const SizedBox(width: 70),
            //         SvgPicture.asset("assets/icons/star-half-stroke-solid.svg"),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
