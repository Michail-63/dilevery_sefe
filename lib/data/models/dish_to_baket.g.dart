// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_to_baket.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DishToBaketAdapter extends TypeAdapter<DishToBaket> {
  @override
  final int typeId = 2;

  @override
  DishToBaket read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DishToBaket(
      title: fields[0] as String,
      price: fields[1] as int,
      item: fields[2] as int,
      image: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DishToBaket obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.item)
      ..writeByte(3)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DishToBaketAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
