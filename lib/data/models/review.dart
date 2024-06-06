import 'package:hive_flutter/hive_flutter.dart';

part 'review.g.dart';

@HiveType(typeId: 1)
class Review {
  @HiveField(0)
  final String review;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int raiting;
  @HiveField(3)
  final DateTime createdAt;

  Review(
   {
    required this.review,
    required this.name,
    required this.raiting,
    required this.createdAt

  });
}
