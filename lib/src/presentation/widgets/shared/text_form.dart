import 'package:flutter/material.dart';

class AppTextFormWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const AppTextFormWidget({
    super.key,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      decoration: const InputDecoration(
        labelText: 'Name',
        hintText: 'Enter name',
        border: OutlineInputBorder(),
      ),
    );
  }
}
