import 'package:amms/contracts/controller.dart';
import 'package:amms/contracts/service.dart';
import 'package:amms/services/auth.service.dart';

class AuthController extends Controller {
  late Service service;
  AuthController() {
    service = AuthService();
  }
}
