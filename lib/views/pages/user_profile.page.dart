import 'package:amms/bindings/user_profile.bindings.dart';
import 'package:amms/middlewares/auth.middleware.dart';
import 'package:get/get.dart';

class UserProfilePage extends GetPage {
  UserProfilePage({required GetView view})
      : super(
            name: '/user-profile',
            binding: UserProfileBindings(),
            page: () => view,
            middlewares: [AuthMiddleware()]);
}
