import 'package:amms/helpers/environment.vars.dart';
import 'package:amms/helpers/parse.server.dart';
import 'package:amms/views/pages/home.page.dart';
import 'package:amms/views/pages/login.page.dart';
import 'package:amms/views/pages/register.page.dart';
import 'package:amms/views/pages/role.page.dart';
import 'package:amms/views/pages/user_profile.page.dart';
import 'package:amms/views/pages/users.page.dart';
import 'package:amms/views/screens/home.screen.dart';
import 'package:amms/views/screens/login.screen.dart';
import 'package:amms/views/screens/register.screen.dart';
import 'package:amms/views/screens/role.screen.dart';
import 'package:amms/views/screens/user_profile.screen.dart';
import 'package:amms/views/screens/users.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await dotenv.load(fileName: EnVars.filename);
  await initParse();
  runApp(const AmmsApp());
}

class AmmsApp extends StatelessWidget {
  const AmmsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        HomePage(view: const HomeScreen()),
        RegisterPage(view: const RegisterScreen()),
        LoginPage(view: const LoginScreen()),
        UsersPage(view: const UsersScreen()),
        RolePage(view: const RoleScreen()),
        UserProfilePage(view: const UserProfileScreen()),
      ],
      home: const HomeScreen(),
    );
  }
}
