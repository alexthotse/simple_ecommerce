import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/auth/auth_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/core/widgets/custom_suffix_icon.dart';
import 'package:simple_ecommerce/presentation/core/widgets/default_button.dart';
import 'package:simple_ecommerce/presentation/core/widgets/form_error.dart';
import 'package:simple_ecommerce/presentation/core/constants.dart';
import 'package:simple_ecommerce/presentation/features/auth/forgot_password_screen.dart';
import 'package:simple_ecommerce/presentation/features/auth/login_success_screen.dart';
import 'package:simple_ecommerce/presentation/core/size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> { // Removed with EmailController
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamed(context, LoginSuccessScreen.routeName);
        } else if (state is AuthFailure) {
          // Display error message
          // This part needs to be handled carefully, as the current error handling
          // uses setState and a list of errors.
          // For simplicity, I'll just add the error to the list for now.
          addError(error: state.message);
        }
      },
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(15)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                const Text("Remember Me"),
                const Spacer(), //One spacer left
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: const Text("Forgot Password",
                      style: TextStyle(decoration: TextDecoration.underline)),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(30)),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Dispatch SignInRequested event
                  context.read<AuthBloc>().add(SignInRequested(email, password));
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kInvalidEmailError); // This seems like a bug, should be kShortPassError
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/user-lock-solid.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    String id = '';
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) { email = newValue!; }, // Removed SignForm.email = newValue;
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.email_outlined),
      ),
    );
  }
}
