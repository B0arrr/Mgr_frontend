import 'package:mgr_frontend/src/shared/services/storage/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends Storage {
  late SharedPreferences _sharedPreferences;

  @override
  Future<void> init() async =>
      _sharedPreferences = await SharedPreferences.getInstance();

  @override
  Future<void> clear() async => await _sharedPreferences.clear();

  @override
  Future<Object?> read({required String key}) async =>
      _sharedPreferences.get(key);

  @override
  Future<void> remove({required String key}) async =>
      await _sharedPreferences.remove(key);

  @override
  Future<void> write({required String key, required Object value}) async =>
      await _sharedPreferences.setString(key, value.toString());

  @override
  Future<String> getToken() async => _sharedPreferences.get('token').toString();

  @override
  Future<void> saveToken({required String value}) async =>
      await _sharedPreferences.setString('token', value);
}
