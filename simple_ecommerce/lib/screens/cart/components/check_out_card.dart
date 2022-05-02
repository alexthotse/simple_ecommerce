import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_ecommerce/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.brown[100],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.50),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Color.fromARGB(255, 84, 228, 151),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/Bill Icon.svg"),
                ),
                Spacer(),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Add voucher code",
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 1),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Total:\n",
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
