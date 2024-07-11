import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiRepository {
  Future<void> getDishList() async {
    var headers = {
      'If-Modified-Since': '0',
      'Content-Type': 'application/json'
    };

    final response = await Dio().request(
      'http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000',
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      debugPrint(json.encode(response.data.toString()));
    } else {
      print(response.statusMessage);
    }

    // print('Response: ${response.toString()}');
  }
}
