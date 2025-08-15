import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/auth/auth_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/core/widgets/custom_bottom_nav_bar.dart';
import 'package:simple_ecommerce/enums.dart';

import 'package:simple_ecommerce/presentation/features/profile/widgets/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key}); // Removed email parameter

  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return CustomBottomNavBar(
              selectedMenu: MenuState.profile,
              email: state.email, // Pass email from state
            );
          }
          return const SizedBox.shrink(); // Or handle other states
        },
      ),
    );
  }
}
