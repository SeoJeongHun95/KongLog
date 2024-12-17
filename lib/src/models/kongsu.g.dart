// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kongsu.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KongsuAdapter extends TypeAdapter<Kongsu> {
  @override
  final int typeId = 1;

  @override
  Kongsu read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Kongsu(
      day: fields[0] as DateTime,
      company: fields[1] as Company,
      kongsuUnit: fields[2] as double,
      mealCheck: fields[3] as bool,
      memo: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Kongsu obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.day)
      ..writeByte(1)
      ..write(obj.company)
      ..writeByte(2)
      ..write(obj.kongsuUnit)
      ..writeByte(3)
      ..write(obj.mealCheck)
      ..writeByte(4)
      ..write(obj.memo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KongsuAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
