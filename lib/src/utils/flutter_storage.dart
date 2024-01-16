import 'dart:convert';

import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> saveInitial(bool initial) async {
    await _storage.write(key: PrefKeys.initial, value: initial.toString());
  }

  static Future<String?> get getInitial async {
    return await _storage.read(key: PrefKeys.initial);
  }

  static Future<void> removeInitial() async {
    await _storage.delete(key: PrefKeys.initial);
  }

  static Future<void> saveToken(String token) async {
    await _storage.write(key: PrefKeys.token, value: token);
  }

  static Future<String?> get getToken async {
    return await _storage.read(key: PrefKeys.token);
  }

  static Future<void> removeToken() async {
    await _storage.delete(key: PrefKeys.token);
  }

  static Future<void> savePin(String pin) async {
    await _storage.write(key: PrefKeys.pin, value: pin);
  }

  static Future<String?> get getPin async {
    return await _storage.read(key: PrefKeys.pin);
  }

  static Future<void> removePin() async {
    await _storage.delete(key: PrefKeys.pin);
  }

  static Future<void> saveUser(UserModel user) async {
    final userJson = jsonEncode(user.toJson());
    await _storage.write(key: PrefKeys.user, value: userJson);
  }

  static Future<UserModel?> getUser() async {
    final userJson = await _storage.read(key: PrefKeys.user);

    if (userJson != null) {
      final userMap = jsonDecode(userJson);
      return UserModel.fromJson(userMap);
    } else {
      return null;
    }
  }

  static Future<void> removeUser() async {
    await _storage.delete(key: PrefKeys.user);
  }
}

mixin PrefKeys {
  static const String initial = "initial";
  static const String token = "token";
  static const String pin = "pin";
  static const String user = "user";
}
