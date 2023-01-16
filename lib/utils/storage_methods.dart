import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageMethods {
  StorageMethods._privateConstructor();

  static final StorageMethods find = StorageMethods._privateConstructor();

  /// set data to local
  Future<bool?> setData(String? key, dynamic value) {
    final pref = Get.find<SharedPreferences>();
    final jsonVal = json.encode(value);
    return pref.setString(key!, jsonVal);
  }

  /// set bool to local
  Future<bool?> setBool(String? key, bool? value) {
    final pref = Get.find<SharedPreferences>();
    return pref.setBool(key!, value!);
  }

  /// remove data from local
  Future<bool?> remove(String? key) {
    final pref = Get.find<SharedPreferences>();
    return pref.remove(key!);
  }

  /// set data to local
  getData(String? key) {
    final pref = Get.find<SharedPreferences>();
    final source = pref.getString(key!);
    if (source == null) return null;
    final map = json.decode(source);
    return map;
  }

  /// set bool to local
  bool getBool(String? key) {
    final pref = Get.find<SharedPreferences>();
    return pref.getBool(key!) ?? false;
  }
}
