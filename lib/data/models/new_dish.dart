
import 'package:hive_flutter/hive_flutter.dart';
part 'new_dish.g.dart';

@HiveType(typeId: 2)
class NewDish {
  @HiveField(0)
  final String id;
  @HiveField(1)
 final bool isRecommended;
  @HiveField(2)
 final bool isFavorites;
  @HiveField(3)
  final bool isTheBest;
  @HiveField(4)
 final bool isPopular;
  @HiveField(5)
  final String title;
  @HiveField(6)
  final int price;
  @HiveField(7)
  final int count;
  @HiveField(8)
  final String image;
  @HiveField(9)
  final String text;


  const NewDish({
    required this.id,
    required this.isRecommended,
    required this.isFavorites,
    required this.isTheBest,
    required this.isPopular,
    required this.text,
    required this.title,
    required this.price,
    required this.image,
    required this.count,


  });

}


