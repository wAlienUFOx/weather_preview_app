// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

enum DataType { String, Bool, Int, StringList }

class SharedPrefs {
  static late SharedPreferences sharedPreferences;

  /// Универсальный метод сета в SharedPreferences
  ///
  /// [title] - куда сеттим
  ///
  /// [data] - что сеттим
  ///
  /// [type] - тип данных, если надо можно и другие добавить
  static Future<void> setData({
    required String title,
    required var data,
    required DataType type,
  }) async {
    if (data == null) {
      sharedPreferences.remove(title);
      return;
    }
    switch (type) {
      case DataType.String:
        await sharedPreferences.setString(title, data);
        break;
      case DataType.Bool:
        await sharedPreferences.setBool(title, data);
        break;
      case DataType.Int:
        await sharedPreferences.setInt(title, data);
        break;
      case DataType.StringList:
        await sharedPreferences.setStringList(title, data);
        break;
      default:
        break;
    }
  }

  static getData({
    required String title,
  }) {
    sharedPreferences.getString(title);
  }

  /// был ли показан онбординг
  static bool get isShownOnboard => sharedPreferences.getBool(SharedPrefsNames.isShownOnboard) ?? false;

  static set isShownOnboard(bool? value) => setData(
    title: SharedPrefsNames.isShownOnboard,
    data: value,
    type: DataType.Bool,
  );

  /// Сохранённый номер пользователя
  static String? get userNumber {
    final token = sharedPreferences.getString(SharedPrefsNames.userNumber);
    return token;
  }

  static set userNumber(String? value) {
    setData(
      title: SharedPrefsNames.userNumber,
      data: value,
      type: DataType.String,
    );
  }

  /// избранные локации
  static Map<String, dynamic> get favorites =>
      json.decode(sharedPreferences.getString(SharedPrefsNames.favorites) ?? '{}');

  static set favorites(Map<String, dynamic> value) => setData(
    title: SharedPrefsNames.favorites,
    data: json.encode(value),
    type: DataType.String,
  );
}

class SharedPrefsNames {
  static String isShownOnboard = 'isShownOnboard';
  static String userNumber = 'userNumber';
  static String favorites = 'favorites';
}