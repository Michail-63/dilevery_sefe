// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DishModelAdapter extends TypeAdapter<_$DishModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$DishModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DishModelImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      image: fields[3] as String,
      price: fields[4] as int,
      oldPrice: fields[5] as String?,
      rating: fields[6] as int,
      likes: fields[7] as int,
      category: fields[8] as String,
      commentsCount: fields[9] as int,
      active: fields[10] as bool,
      createdAt: fields[11] as int,
      updatedAt: fields[12] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$DishModelImpl obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.oldPrice)
      ..writeByte(6)
      ..write(obj.rating)
      ..writeByte(7)
      ..write(obj.likes)
      ..writeByte(8)
      ..write(obj.category)
      ..writeByte(9)
      ..write(obj.commentsCount)
      ..writeByte(10)
      ..write(obj.active)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(12)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DishModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
