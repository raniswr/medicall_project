import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:medicall_project/app/model/model_album.dart';

abstract class Services {
  static Future<ModelAlbum?> getById(int id) async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/albums/1');
      if (response.statusCode == 200) {
        return ModelAlbum.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      log('failed to getById : $e');
      return null;
    }
  }

  static Future<ModelAlbum?> createUser(String id, String title) async {
    try {
      var response = await Dio().post('https://reqres.in/api/users', data: {'id': id, 'title': title});

      if (response.statusCode == 201) {
        return ModelAlbum.fromJson(response.data);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
