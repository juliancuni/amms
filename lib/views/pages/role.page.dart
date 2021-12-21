import 'package:amms/bindings/role.bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RolePage extends GetPage {
  RolePage()
      : super(
          name: '/role',
          binding: RoleBindings(),
          page: () => Container(),
        );
}
