import 'dart:developer';

import 'package:amms/contracts/service.dart';
import 'package:amms/models/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class AuthService extends Service {
  Future<User?> login({
    required String identity,
    required String password,
  }) async {
    // final user = ParseUser(identity, password, null);
    // var response = await user.login();
    // if (response.success) {
    //   log("Logged In");
    // } else {
    //   log(response.error!.message);
    // }
  }

  Future<bool?> logout() async {}
  Future<User?> register({
    required String fullName,
    required String username,
    required String email,
    required String password,
  }) async {
    final user = ParseUser.createUser(
      username,
      password,
      email,
    );
    user.set("name", fullName);
    ParseResponse response = await user.signUp();
    if (response.success) log(response.results.toString());
    if (response.error != null) log(response.error.toString());
  }

  @override
  Future create({required Map<String, dynamic> data}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<List?> find() {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future findOne({required String id}) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool?> remove({required String id}) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future update({required model}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
