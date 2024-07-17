import 'dart:convert';

import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/models/lists/list_new_dishes.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/abstract_dish_repository.dart';
import 'package:dio/dio.dart';

class ApiRepository implements AbstractDishRepository {
  final Dio dio;

  ApiRepository({required this.dio});

  @override
  Future<List<DishModel>> getDishList() async {
    // List<DishModel> listDish=[];
    var headers = {
      'If-Modified-Since': '0',
      'Content-Type': 'application/json'
    };
    final response = await dio.request(
        'http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000',
        options: Options(
          method: 'GET',
          headers: headers,
        ));
    if (response.statusCode == 200) {
      Iterable dishList = response.data;
      final listDishModel = List<DishModel>.from(
          dishList.map((DishModelJson) => DishModel.fromJson(DishModelJson)));
      print('listDishModel: ${listDishModel.length}');
      for (int i = 0; i < listDishModel.length; i++) {
        print('listDishModel.name: ${listDishModel[i].description}');
      }
      return listDishModel;
    } else {
      throw Exception("An error occurred on fetching users data!");
    }
  }

//
// List<dynamic> list = response.data;
// print('listDish: ${list.length}');
// print('response: ${response.data.length}');

// listDish = list.forEach((e) => DishModel());
//
// }
}
