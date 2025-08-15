import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/auth/auth_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/features/auth/widgets/complete_profile_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key}); // Removed email parameter

  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const SizedBox(),
        title: const Text("Login Success"),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: BlocBuilder<AuthBloc, AuthState>( // Use BlocBuilder
        builder: (context, state) {
          if (state is AuthSuccess) {
            return const CompleteProfileBody();
          }
          return const Center(child: CircularProgressIndicator()); // Or handle other states
        },
      ),
    );
  }
}
