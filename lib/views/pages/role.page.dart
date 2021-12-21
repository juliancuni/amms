import 'package:amms/bindings/role.bindings.dart';
import 'package:get/get.dart';

class RolePage extends GetPage {
  RolePage({required GetView view})
      : super(
          name: '/role',
          binding: RoleBindings(),
          page: () => view,
        );
}
