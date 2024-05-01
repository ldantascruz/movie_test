import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ASecureStorage {
  static const _storage = FlutterSecureStorage();

  AndroidOptions _secureOption() {
    return const AndroidOptions(encryptedSharedPreferences: false);
  }

  Future<Map<String, String>> _readAll() async {
    var map = <String, String>{};
    try {
      map = await _storage.readAll();
    } catch (e) {
      debugPrint(e as String?);
    }
    return map;
  }

  Future<void> deleteAll() async {
    try {
      await _storage.deleteAll();
      _readAll();
    } catch (e) {
      debugPrint(e as String?);
    }
  }

  Future<String> readSecureData(String key) async {
    String value = "";
    try {
      value = (await _storage.read(key: key)) ?? "";
    } catch (e) {
      debugPrint(e as String?);
    }
    return value;
  }

  Future<void> deleteSecureData(String key) async {
    try {
      await _storage.delete(key: key);
    } catch (e) {
      debugPrint(e as String?);
    }
  }

  Future<void> writeSecureData(String key, String value) async {
    try {
      await _storage.write(key: key, value: value, aOptions: _secureOption());
    } catch (e) {
      debugPrint(e as String?);
    }
  }
}
