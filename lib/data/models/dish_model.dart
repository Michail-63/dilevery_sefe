import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'dish_model.freezed.dart';

part 'dish_model.g.dart';

@freezed
class DishModel with _$DishModel {
  @HiveType(typeId: 5, adapterName: 'DishModelAdapter')
  const factory DishModel({
    @HiveField(0)
    required String id,
    @HiveField(1)
    required String name,
    @HiveField(2)
    required String? description,
    @HiveField(3)
    required String image,
    @HiveField(4)
    required int price,
    @HiveField(5)
    required String? oldPrice,
    @HiveField(6)
    required int rating,
    @HiveField(7)
    required int likes,
    @HiveField(8)
    required String category,
    @HiveField(9)
    required int commentsCount,
    @HiveField(10)
    required bool active,
    @HiveField(11)
    required int createdAt,
    @HiveField(12)
    required int updatedAt,
  }) = _DishModel;

  factory DishModel.fromJson(Map<String, Object?> json) =>
      _$DishModelFromJson(json);
}
//
// @freezed
// class ListDishModel with _$ListDishModel {
//   const factory ListDishModel({
//     DishModel? dishModel,
//   }) = _ListDishModel;
//
//   factory ListDishModel.fromJson(Map<String, Object?> json) =>
//       _$ListDishModelFromJson(json);
// }
