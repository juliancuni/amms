import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  late TextEditingController controller;
  late String hintText, labelText;

  TextInputField({
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
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
