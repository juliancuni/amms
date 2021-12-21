import 'package:amms/bindings/users.bindings.dart';
import 'package:get/get.dart';

class UsersPage extends GetPage {
  UsersPage({required GetView view})
      : super(
          name: '/user',
          binding: UsersBindings(),
          page: () => view,
        );
}
