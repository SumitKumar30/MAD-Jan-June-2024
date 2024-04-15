import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String labelText;
  final void Function(String?)? onSaved;
  const CustomInput({Key? key, required this.labelText, required this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          floatingLabelBehavior: FloatingLabelBehavior.never),
      initialValue: '',
      validator: (String? value) {
        if (value!.isEmpty) {
          return '$labelText is required';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
