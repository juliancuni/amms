import 'package:amms/controllers/role.controller.dart';
import 'package:get/get.dart';

class RoleBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoleController());
  }
}
