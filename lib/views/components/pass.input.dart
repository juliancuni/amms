import 'package:flutter/material.dart';

class PassInputField extends StatelessWidget {
  late TextEditingController controller;
  late String hintText, labelText;

  PassInputField({
    required TextEditingController controller,
    required String hintText,
    required String labelText,
  }) {
    this.controller = controller;
    this.hintText = hintText;
    this.labelText = labelText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
