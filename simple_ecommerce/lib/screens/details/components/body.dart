import 'package:flutter/material.dart';
import 'package:simple_ecommerce/components/default_button.dart';
import 'package:simple_ecommerce/constants.dart';
import 'package:simple_ecommerce/models/product.dart';
import 'package:simple_ecommerce/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.brown[100]!,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Colors.brown[200]!,
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.brown,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth! * 0.15,
                          right: SizeConfig.screenWidth! * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
