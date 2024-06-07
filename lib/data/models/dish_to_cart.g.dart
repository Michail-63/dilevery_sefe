// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_to_cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DishToCartAdapter extends TypeAdapter<DishToCart> {
  @override
  final int typeId = 2;

  @override
  DishToCart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DishToCart(
      id: fields[0] as String,
      title: fields[1] as String,
      price: fields[2] as int,
      count: fields[3] as int,
      image: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DishToCart obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DishToCartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
