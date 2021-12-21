import 'package:get/get_connect.dart';

abstract class Service<Model> extends GetConnect {
  Future<List<Model>?> find();
  Future<Model?> findOne({required String id});
  Future<Model?> create({required Map<String, dynamic> data});
  Future<Model?> update({required Model model});
  Future<bool?> remove({required String id});
}
