import 'package:amms/contracts/controller.dart';
import 'package:amms/contracts/service.dart';
import 'package:amms/models/user_profile.dart';
import 'package:amms/services/remote/user_profile.service.dart';

class UserProfileController extends Controller<UserProfile> {
  late Service service;
  UserProfileController() {
    service = UserProfileService();
  }
}
