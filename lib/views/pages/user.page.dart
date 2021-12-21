import 'package:amms/bindings/user.bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends GetPage {
  UserPage()
      : super(
          name: '/user',
          binding: UserBindings(),
          page: () => Container(),
        );
}
