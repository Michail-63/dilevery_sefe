import 'package:hive_flutter/hive_flutter.dart';

part 'new_dish.g.dart';

@HiveType(typeId: 2)
class NewDish {
  @HiveField(0)
  final String dishId;
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
    required this.dishId,
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

  NewDish copyWith({
    String? dishId,
    bool? isRecommended,
    bool? isFavorites,
    bool? isTheBest,
    bool? isPopular,
    String? title,
    int? price,
    int? count,
    String? image,
    String? text,
  }) {
    return NewDish(
      dishId: dishId ?? this.dishId,
      isRecommended: isRecommended ?? this.isRecommended,
      isFavorites: isFavorites ?? this.isFavorites,
      isTheBest: isTheBest ?? this.isTheBest,
      isPopular: isPopular ?? this.isPopular,
      title: title ?? this.title,
      price: price ?? this.price,
      count: count ?? this.count,
      image: image ?? this.image,
      text: text ?? this.text,
    );
  }

}
