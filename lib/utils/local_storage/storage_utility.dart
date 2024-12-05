import 'package:get_storage/get_storage.dart';

class SLocalStorage {
  static final SLocalStorage _instance = SLocalStorage.internal();
  factory SLocalStorage() {
    return _instance;
  }
  SLocalStorage.internal();

  final _storage = GetStorage();

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read(key);
  }

  Future<void> removeData<T>(String key, T value) async {
    await _storage.remove(key);
  }

  Future<void> clearAll<T>(String key, T value) async {
    await _storage.erase();
  }
}
