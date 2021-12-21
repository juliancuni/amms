import 'package:amms/contracts/controller.dart';
import 'package:amms/contracts/service.dart';
import 'package:amms/models/role.dart';
import 'package:amms/services/remote/role.service.dart';

class RoleController extends Controller<Role> {
  late Service service;
  RoleController() {
    service = RoleService();
  }
}
