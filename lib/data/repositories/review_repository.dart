//
// import 'package:delivery/data/models/review.dart';
// import 'package:hive_flutter/hive_flutter.dart';
//
// class ReviewRepository {
//   final Box<Review> reviewBox = Hive.box<Review>('review_box');
//
//
//   Future<Review?> addReview(String id) {Hive.box<ProductModel>("product1").add(product);}
//     // static void addProduct(ProductModel product ){
//
//
//   }
//
//   Future<Review?> getReview(String id) async {
//     // await Future.delayed(Duration(seconds: 2));
//     try {
//       final dish = newDishBox.values.firstWhere((element) => element.id == id);
//       // print('Dish = ${dish.id},${dish.title},  ID = ${id} , count = ${dish.count}');
//       return dish;
//     } catch (e) {
//       return null;
//     }
//   }
// }