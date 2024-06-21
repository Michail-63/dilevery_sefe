// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_dish.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewDishAdapter extends TypeAdapter<NewDish> {
  @override
  final int typeId = 2;

  @override
  NewDish read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewDish(
      dishId: fields[0] as String,
      isRecommended: fields[1] as bool,
      isFavorites: fields[2] as bool,
      isTheBest: fields[3] as bool,
      isPopular: fields[4] as bool,
      text: fields[9] as String,
      title: fields[5] as String,
      price: fields[6] as int,
      image: fields[8] as String,
      count: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NewDish obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.dishId)
      ..writeByte(1)
      ..write(obj.isRecommended)
      ..writeByte(2)
      ..write(obj.isFavorites)
      ..writeByte(3)
      ..write(obj.isTheBest)
      ..writeByte(4)
      ..write(obj.isPopular)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.count)
      ..writeByte(8)
      ..write(obj.image)
      ..writeByte(9)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewDishAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
