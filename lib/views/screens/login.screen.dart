import 'package:amms/controllers/auth.controller.dart';
import 'package:amms/views/components/pass.input.dart';
import 'package:amms/views/components/text.input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "Login Page",
            ),
            TextInputField(
              controller: controller.loginUserCtrl,
              hintText: "Username",
              labelText: "Username/Email",
            ),
            PassInputField(
              controller: controller.loginPassCtrl,
              hintText: "Password",
              labelText: "Password",
            ),
            TextButton(
              onPressed: () {
                controller.login();
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed("/register");
              },
              child: const Text("Register"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed("/");
              },
              child: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
