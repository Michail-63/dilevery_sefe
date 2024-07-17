import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_model.freezed.dart';

part 'dish_model.g.dart';

@freezed
class DishModel with _$DishModel {
  const factory DishModel({
    required String id,
    required String name,
    required String? description,
    required String image,
    required int price,
    required String? oldPrice,
    required int rating,
    required int likes,
    required String category,
    required int commentsCount,
    required bool active,
    required int createdAt,
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
