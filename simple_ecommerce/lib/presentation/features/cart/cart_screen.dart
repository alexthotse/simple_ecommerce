import 'package:flutter/material.dart';

import 'package:simple_ecommerce/presentation/features/cart/widgets/cart_body.dart';
import 'package:simple_ecommerce/presentation/features/cart/widgets/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: CartBody(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}
