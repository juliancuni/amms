import 'package:amms/views/pages/login.page.dart';
import 'package:amms/views/pages/register.page.dart';
import 'package:amms/views/pages/role.page.dart';
import 'package:amms/views/pages/user_profile.page.dart';
import 'package:amms/views/pages/users.page.dart';
import 'package:amms/views/screens/login.screen.dart';
import 'package:amms/views/screens/register.screen.dart';
import 'package:amms/views/screens/role.screen.dart';
import 'package:amms/views/screens/user_profile.screen.dart';
import 'package:amms/views/screens/users.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const AmmsApp());
}

class AmmsApp extends StatelessWidget {
  const AmmsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        RegisterPage(view: const RegisterScreen()),
        LoginPage(view: const LoginScreen()),
        UsersPage(view: const UsersScreen()),
        RolePage(view: const RoleScreen()),
        UserProfilePage(view: const UserProfileScreen()),
      ],
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.toNamed("/register");
          },
          child: const Text("Register"),
        ),
      ),
    );
  }
}
