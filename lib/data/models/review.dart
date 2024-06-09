import 'package:hive_flutter/hive_flutter.dart';

part 'review.g.dart';

@HiveType(typeId: 1)
class Review {
  @HiveField(0)
  final String dishId;
  @HiveField(1)
  final String review;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final int raiting;
  @HiveField(4)
  final DateTime createdAt;

  Review(
   {required this.dishId,
    required this.review,
    required this.name,
    required this.raiting,
    required this.createdAt

  });
}
