import 'package:flutter/material.dart';
import 'package:simple_ecommerce/presentation/core/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      errors.length,
      (index) => formErrorText(error: errors[index]),
    ));
  }

  Row formErrorText({String? error}) {
    return Row(
      children: [
        Icon(Icons.error_outline, color: Colors.red, size: 14),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error!),
      ],
    );
  }
}
