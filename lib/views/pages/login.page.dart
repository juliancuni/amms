import 'package:amms/bindings/auth.bindings.dart';
import 'package:get/get.dart';

class LoginPage extends GetPage {
  LoginPage({required GetView view})
      : super(
          name: "/login",
          binding: AuthBindings(),
          page: () => view,
        );
}
