import 'package:amms/controllers/auth.controller.dart';
import 'package:amms/views/components/pass.input.dart';
import 'package:amms/views/components/text.input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "Register Page",
            ),
            TextInputField(
              controller: controller.fullnameController,
              hintText: "Full Name",
              labelText: "Full Name",
            ),
            TextInputField(
              controller: controller.usernameController,
              hintText: "Username",
              labelText: "Username",
            ),
            TextInputField(
              controller: controller.emailController,
              hintText: "Email",
              labelText: "Email",
            ),
            PassInputField(
              controller: controller.passwordController,
              hintText: "Password",
              labelText: "Password",
            ),
            PassInputField(
              controller: controller.passwordRepeatController,
              hintText: "Repeat",
              labelText: "Repeat",
            ),
            TextButton(
              onPressed: () {
                controller.register();
              },
              child: const Text("Register"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed("/login");
              },
              child: const Text("Login"),
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
