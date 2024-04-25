import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// был ли показан онбординг
  static bool get isShownOnboard => sharedPreferences!.getBool(SharedPrefsNames.isShownOnboard) ?? false;

  static set isShownOnboard(bool value) => sharedPreferences!.setBool(SharedPrefsNames.isShownOnboard, value);

  /// Сохранённый номер пользователя
  static String? get userNumber {
    final token = sharedPreferences!.getString(SharedPrefsNames.userNumber);
    return token;
  }

  static set userNumber(String? value) => value != null
      ? sharedPreferences!.setString(SharedPrefsNames.userNumber, value)
      : sharedPreferences!.remove(SharedPrefsNames.userNumber);

  /// избранные локации
  static Map<String, dynamic> get favorites =>
      json.decode(sharedPreferences!.getString(SharedPrefsNames.favorites) ?? '{}');

  static set favorites(Map<String, dynamic> value) =>
      sharedPreferences!.setString(SharedPrefsNames.favorites, json.encode(value));
}

class SharedPrefsNames {
  static String isShownOnboard = 'isShownOnboard';
  static String userNumber = 'userNumber';
  static String favorites = 'favorites';
}
