import 'dart:convert';

import 'package:delivery/data/models/dish_model.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class ApiRepository {
  final Box<DishModel> dishBox = Hive.box('dish_box');

  Future<List<DishModel>> getDishList() async {
    var listDishModel = <DishModel>[];
    try {
    List<DishModel> listDishModel = await _fetchGetDishList();
    final dishMap = {for (var e in listDishModel) e.name: e};
    await dishBox.putAll(dishMap);
    } catch (e) {
      return dishBox.values.toList();
    }

    return listDishModel;
  }


  Future<List<DishModel>> _fetchGetDishList() async {
    var headers = {
      'If-Modified-Since': '0',
      'Content-Type': 'application/json'
    };
    final response = await Dio()
        .request('http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000',
        options: Options(
          method: 'GET',
          headers: headers,
        ));

    Iterable dishList = response.data;
    final listDishModel = List<DishModel>.from(
        dishList.map((DishModelJson) => DishModel.fromJson(DishModelJson)));

    for (int i = 0; i < listDishModel.length; i++) {
      print('listDishModel.category: ${listDishModel[i].category}');
    }
    return listDishModel;
  }


  Future<List<DishModel>> getFavoriteDish() async {
    var headers = {
      'If-Modified-Since': '0',
      'Authorization': '{{token}}'
    };
    final response = await Dio()
        .request('http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000/favorite?offset=0&limit=10',
        options: Options(
          method: 'GET',
          headers: headers,
        ));

    Iterable dishList = response.data;
    final listDishModel = List<DishModel>.from(
        dishList.map((DishModelJson) => DishModel.fromJson(DishModelJson)));

    for (int i = 0; i < listDishModel.length; i++) {
      print('listDishModel.category: ${listDishModel[i].category}');
    }
    return listDishModel;
  }







  Future<List<DishModel>?> getCategoryDishModal() async {
    final String categoryId = '654dfb40e6d2d0003ccb8a8f';
    try {
      // await Future.delayed(Duration(seconds: 4));
      final listDish = dishBox.values
          .where((element) => element.category == categoryId)
          .toList();

      print('listDish.lenght: ${listDish.length}');
      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<DishModel?> getDish(String id) async {
    final dish =
    dishBox.values.firstWhere((element) => element.id == id);
    return dish;

  }


}
