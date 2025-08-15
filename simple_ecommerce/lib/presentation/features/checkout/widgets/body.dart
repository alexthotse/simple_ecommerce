import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/checkout/checkout_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/features/checkout/AddCardPage.dart';
import 'package:simple_ecommerce/domain/models/CardModel.dart'; // Updated import
import 'package:simple_ecommerce/presentation/features/checkout/widgets/CardView.dart'; // Updated import

class Body extends StatefulWidget {
  const Body({super.key, required this.email});
  final String email;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _pageController = PageController(
    viewportFraction: 0.3,
  );

  @override
  void initState() {
    super.initState();
    context.read<CheckoutBloc>().add(const LoadCards()); // Load cards when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.2;
    double cardHeight = 250;
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Payment Methods",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: BlocConsumer<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          if (state is CheckoutActionSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          } else if (state is CheckoutActionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          } else if (state is CheckoutLoadFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is CheckoutLoadInProgress) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CheckoutLoadSuccess) {
            if (state.cards.isEmpty) {
              return addNewCardDialog();
            }
            return Center(
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                itemCount: state.cards.length,
                itemBuilder: (context, index) =>
                    _builder(index, state.cards[index]),
              ),
            );
          }
          return const Center(child: Text("Something went wrong!")); // Default case
        },
      ),
      floatingActionButton: FloatingActionButton(
        enableFeedback: true,
        tooltip: 'Add a new card',
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddCardPage(email: widget.email)));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  Container addNewCardDialog() {
    return Container(
      height: 210,
      decoration: BoxDecoration(
          color: Colors.blue[300], borderRadius: BorderRadius.circular(20)),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Add your new card: click the \n + \n button in the bottom right.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.amber[100], fontSize: 20),
        ),
      ),
    );
  }

  AnimatedBuilder _builder(int index, CardModel card) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;

        if (_pageController.position.haveDimensions) {
          value = (_pageController.page! - index);

          if (value >= 0) {
            double lowerLimit = 0;
            double upperLimit = pi / 2;

            value = (upperLimit - (value.abs() * (upperLimit - lowerLimit)))
                .clamp(lowerLimit, upperLimit);
            value = upperLimit - value;
            value *= -1;
          }
        } else {
          //Won't work properly in case initialPage in changed in PageController
          if (index == 0) {
            value = 0;
          } else if (index == 1) {
            value = -1;
          }
        }

        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(value),
          alignment: Alignment.center,
          child: Card(card: card),
        );
      },
      child: Card(card: card),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center,
        children: [
          CardView(card),
        ]);
  }
}
