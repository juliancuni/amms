import 'package:amms/controllers/users.controller.dart';
import 'package:get/get.dart';

class UsersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersController());
  }
}
