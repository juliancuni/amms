import 'package:amms/contracts/controller.dart';
import 'package:amms/contracts/service.dart';
import 'package:amms/models/user.dart';
import 'package:amms/services/remote/user.service.dart';

class UserController extends Controller<User> {
  late Service service;
  UserController() {
    service = UserService();
  }
}
