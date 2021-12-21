import 'package:amms/controllers/auth.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text("ToHome"),
        ),
      ),
    );
  }
}
