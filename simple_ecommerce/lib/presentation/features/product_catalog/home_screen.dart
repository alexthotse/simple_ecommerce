import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/auth/auth_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/core/widgets/custom_bottom_nav_bar.dart';
import 'package:simple_ecommerce/enums.dart';

import 'package:simple_ecommerce/presentation/features/product_catalog/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Removed email parameter

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Body(email: state.email); // Pass email from state
          }
          return const Center(child: CircularProgressIndicator()); // Or handle other states
        },
      ),
      bottomNavigationBar: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return CustomBottomNavBar(
              selectedMenu: MenuState.home,
              email: state.email, // Pass email from state
            );
          }
          return const SizedBox.shrink(); // Or handle other states
        },
      ),
    );
  }
}
