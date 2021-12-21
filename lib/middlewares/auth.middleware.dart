import 'package:amms/controllers/auth.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  // @override
  // int get priority => 2;
  final authController = Get.put(AuthController());

  @override
  RouteSettings? redirect(String? route) {
    if (!authController.isAuthenticated.value) {
      return const RouteSettings(name: "/login");
    }
  }
}
