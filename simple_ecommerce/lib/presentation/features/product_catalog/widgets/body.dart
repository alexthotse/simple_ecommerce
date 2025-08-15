
import 'package:flutter/material.dart';
import 'package:simple_ecommerce/domain/models/product.dart';
import 'package:simple_ecommerce/presentation/core/widgets/product_card.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: demoProducts.length,
      itemBuilder: (context, index) => ProductCard(
        product: demoProducts[index],
      ),
    );
  }
}
