import 'package:amms/bindings/auth.bindings.dart';
import 'package:get/get.dart';

class RegisterPage extends GetPage {
  RegisterPage({required GetView view})
      : super(
          name: "/register",
          binding: AuthBindings(),
          page: () => view,
        );
}
