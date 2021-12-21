import 'package:amms/helpers/environment.vars.dart';
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
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> main() async {
  await dotenv.load(fileName: EnVars.filename);

  await Parse().initialize(
    EnVars.appId,
    EnVars.apiUrl,
    clientKey: EnVars.clientKey,
    autoSendSessionId: true,
  );

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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                EnVars.apiUrl,
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed("/register");
                },
                child: const Text("Register"),
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
      ),
    );
  }
}
