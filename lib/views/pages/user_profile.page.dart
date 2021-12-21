import 'package:amms/bindings/user_profile.bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfilePage extends GetPage {
  UserProfilePage()
      : super(
          name: '/user-profile',
          binding: UserProfileBindings(),
          page: () => Container(),
        );
}
