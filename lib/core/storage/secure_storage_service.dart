import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'base_storage.dart';

class SecureStorageService implements BaseStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  @override
  Future<void> write(String key, dynamic value) async {
    await _storage.write(key: key, value: value);
  }

  @override
  Future<dynamic> read(String key) async {
    return await _storage.read(key: key);
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> clear() async {
    await _storage.deleteAll();
  }

  Future<void> saveToken(String token) async {
    await write('auth_token', token);
  }

  Future<String?> getToken() async {
    return await read('auth_token');
  }

  Future<void> deleteToken() async {
    await delete('auth_token');
  }
}
