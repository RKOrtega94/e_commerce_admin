import 'package:flutter/material.dart';

class AppTextFormWidget extends StatelessWidget {
  const AppTextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Name',
        hintText: 'Enter name',
        border: OutlineInputBorder(),
      ),
    );
  }
}
