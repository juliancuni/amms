import 'package:amms/controllers/auth.controller.dart';
import 'package:amms/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(
              () => const HomePage(),
            );
          },
          child: const Text("ToHome"),
        ),
      ),
    );
  }
}
