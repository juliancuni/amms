import 'package:amms/contracts/service.dart';
import 'package:amms/models/user.dart';

class UserService extends Service<User> {
  @override
  Future<User?> create({required Map<String, dynamic> data}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List<User>?> find() {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<User?> findOne({required String id}) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool?> remove({required String id}) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<User?> update({required User model}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
