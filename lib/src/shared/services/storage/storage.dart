import 'package:mgr_frontend/src/datasource/models/User/user.dart';

abstract class Storage {
  Future<void> init();

  Future<void> clear();

  Future<void> write({required String key, required Object value});

  Future<Object?> read({required String key});

  Future<void> remove({required String key});

  Future<String> getToken();

  Future<void> saveToken({required String value});

  Future<User?> getUser();

  Future<void> saveUser({required User user});
}