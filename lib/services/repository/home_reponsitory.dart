import 'package:hieuductran/model/user.dart';

abstract class Reponsitory {
  Future<List<User>> getData();

  Future<User> searchData();

  Future<User> deleteData();

  Future<User> updateData();

  Future<User> createData();
}
