// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_dish_to_cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountDishToCartAdapter extends TypeAdapter<CountDishToCart> {
  @override
  final int typeId = 3;

  @override
  CountDishToCart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountDishToCart(
      id: fields[0] as String,
      count: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CountDishToCart obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountDishToCartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
