import 'package:amms/controllers/user_profile.controller.dart';
import 'package:get/get.dart';

class UserProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileController());
  }
}
