import 'package:hive_flutter/hive_flutter.dart';

part 'review.g.dart';

@HiveType(typeId: 1)
class Review {
  @HiveField(0)
  final String dishId;
  @HiveField(1)
  final String comment;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final int rating;
  @HiveField(4)
  final DateTime createdAt;

  Review(
   {required this.dishId,
    required this.comment,
    required this.name,
    required this.rating,
    required this.createdAt

  });
}
