import 'dart:convert';

import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

class InMemoryStorage extends Storage {
  final Map<String, Object?> _storage = {};

  @override
  Future<void> init() async {}

  @override
  Future<void> clear() async => _storage.clear();

  @override
  Future<void> write({required String key, required Object value}) async =>
      _storage[key] = value;

  @override
  Future<Object?> read({required String key}) async => _storage[key];

  @override
  Future<void> remove({required String key}) async => _storage.remove(key);

  @override
  Future<String> getToken() async => _storage['token'].toString();

  @override
  Future<void> saveToken({required String value}) async =>
      _storage['token'] = value;

  @override
  Future<User?> getUser() async {
    final userJson = _storage['user'] as String?;
    if (userJson == null) return null;

    final Map<String, dynamic> userMap = jsonDecode(userJson);
    return User.fromJson(userMap);
  }

  @override
  Future<void> saveUser({required User user}) async {
    final userJson = jsonEncode(user.toJson());
    _storage['user'] = userJson;
  }
}
