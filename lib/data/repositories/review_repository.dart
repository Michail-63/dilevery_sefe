import 'package:delivery/data/models/review.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ReviewRepository {
  final Box<Review> reviewBox;

  ReviewRepository({required this.reviewBox});


}