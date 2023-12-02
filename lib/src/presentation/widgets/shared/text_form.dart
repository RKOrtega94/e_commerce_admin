import 'package:flutter/material.dart';

class AppTextFormWidget extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const AppTextFormWidget({
    super.key,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.maxLines,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      minLines: maxLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
