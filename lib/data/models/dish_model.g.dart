// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DishModelImpl _$$DishModelImplFromJson(Map<String, dynamic> json) =>
    _$DishModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String,
      price: (json['price'] as num).toInt(),
      oldPrice: json['oldPrice'] as String?,
      rating: (json['rating'] as num).toInt(),
      likes: (json['likes'] as num).toInt(),
      category: json['category'] as String,
      commentsCount: (json['commentsCount'] as num).toInt(),
      active: json['active'] as bool,
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$DishModelImplToJson(_$DishModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'rating': instance.rating,
      'likes': instance.likes,
      'category': instance.category,
      'commentsCount': instance.commentsCount,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
