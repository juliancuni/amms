import 'package:amms/contracts/controller.dart';
import 'package:amms/contracts/service.dart';
import 'package:amms/models/user.dart';
import 'package:amms/services/remote/users.service.dart';

class UsersController extends Controller<User> {
  late Service service;
  UsersController() {
    service = UsersService();
  }
}
