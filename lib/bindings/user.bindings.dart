import 'package:amms/controllers/user.controller.dart';
import 'package:get/get.dart';

class UserBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
