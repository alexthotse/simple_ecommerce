import 'package:flutter/material.dart';
import 'package:simple_ecommerce/domain/models/cart.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCarts.length,
      itemBuilder: (context, index) => Card(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(demoCarts[index].product.images[0]),
            title: Text(demoCarts[index].product.title),
            subtitle: Text('\$${demoCarts[index].product.price}'),
            trailing: IconButton(
              icon: Icon(Icons.remove_shopping_cart),
              onPressed: () {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}