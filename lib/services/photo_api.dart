// import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

/// The PhotoAPI class has a method called photoAPI that returns a Future of type dynamic
import '../models/photo_model.dart';
class PhotoAPI {
  var dio = Dio();
  Future<dynamic> photoAPI() async {
    return await dio.get('https://jsonplaceholder.typicode.com/photos');
  }
}

// void photoAPI() async {
//   try {
//     var response = await Dio().get('https://jsonplaceholder.typicode.com/photos');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }


