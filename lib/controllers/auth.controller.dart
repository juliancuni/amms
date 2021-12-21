import 'package:amms/contracts/controller.dart';
import 'package:amms/services/auth.service.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';

class AuthController extends Controller {
  late AuthService authService;

  RxBool isAuthenticated = false.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordRepeatController = TextEditingController();
  TextEditingController loginUserCtrl = TextEditingController();
  TextEditingController loginPassCtrl = TextEditingController();

  AuthController() {
    authService = AuthService();
  }

  login() {
    authService.login(
      identity: loginUserCtrl.text,
      password: loginPassCtrl.text,
    );
  }

  register() {
    authService.register(
      fullName: fullnameController.text,
      username: usernameController.text,
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
