/*
  Mengolah data json dari http request menggunakan JSON

  Notes
  - lokasi file ini terletak pada ./test/namabebas_test.dart
  - nama file ini harus ada namabebas_test.dart

*/

// 1. install package dio terlebih dahulu, dan import ke sini
// import 'dart:convert';
import 'package:dataramen/models/Ramene.dart';
import 'package:dio/dio.dart';

// 2. menggunakan asyncronous untuk ambil data api
class RameneService {
  // static Future<Map<String, dynamic>> getDataRamen() async {
  //   // 3. inisasikan sebuah package Dio
  //   Dio dio = Dio();

  //   /* 4. variable dio dapat diakses berbagai method salah
  // satunya get untuk mengambil data dari http request */
  //   var response = await dio.get(
  //       'https://my-does-app-5c4a7-default-rtdb.firebaseio.com/ramene.json');
  //   // print('status code : ${response.statusCode}');
  //   // var dataResponse = response.data;

  //   return response.data;
  // }

  static Future<List<Ramene>> getDataRamen() async {
    // 3. inisasikan sebuah package Dio
    Dio dio = Dio();

    /* 4. variable dio dapat diakses berbagai method salah 
  satunya get untuk mengambil data dari http request */
    var response = await dio.get(
        'https://my-does-app-5c4a7-default-rtdb.firebaseio.com/ramene.json');

    List<Ramene> ramens =
        (response.data['data'] as List).map((e) => Ramene.fromJson(e)).toList();
    // print('status code : ${response.statusCode}');
    // var dataResponse = response.data;

    return ramens;
  }
}
 