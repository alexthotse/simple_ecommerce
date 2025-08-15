import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/auth/auth_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/features/checkout/widgets/body.dart';
// import '';


class CreditCardScreen extends StatelessWidget {

  static String routeName = 'credit_card';

  const CreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Body(email: state.email); // Pass email from state
          }
          return const Center(child: CircularProgressIndicator()); // Or handle other states
        },
      ),
    );
  }
}

