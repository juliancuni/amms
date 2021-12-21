import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed("/register");
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
                Get.toNamed("/user-profile");
              },
              child: const Text("UserProfile"),
            ),
            TextButton(
              onPressed: () {
                Get.snackbar("Info", "Snackbar me the te thashe");
              },
              child: const Text("Snack"),
            ),
            TextButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Info",
                  content: const Text("Snackbar me the te thashe"),
                  textCancel: "Cancel",
                  textConfirm: "Ok",
                );
              },
              child: const Text("Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
