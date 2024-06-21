import 'package:delivery/data/models/review.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ReviewRepository {
  final Box<Review> reviewBox = Hive.box<Review>('review_box');

  Future <void> addReview(String dishId,String coment,int rating) async {
    reviewBox.add(
        Review(
      dishId: dishId,
      coment: coment,
      name: "Екатерина",
      rating: rating,
      createdAt: DateTime.now(),
    ));
  }

  Future<List<Review>?> getReviews(String dishId) async {
    try {
      final review =
          reviewBox.values.where((element) => element.dishId == dishId).toList();
      return review;
    } catch (e) {
      return null;
    }
  }


  Future<List<Review>?> deleteReviews(String dishId) async {
    try {
      final reviewIndex = reviewBox.values.toList().indexWhere((e)=>e.dishId==dishId);
      reviewBox.deleteAt(reviewIndex);
      final review = reviewBox.values.where((element) => element.dishId == dishId).toList();
      return review;
    } catch (e) {
      return null;
    }
  }
}
