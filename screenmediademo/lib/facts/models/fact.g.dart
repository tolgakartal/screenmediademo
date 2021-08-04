// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FactAdapter extends TypeAdapter<Fact> {
  @override
  final int typeId = 1;

  @override
  Fact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fact(
      id: fields[0] as String,
      userId: fields[1] as int?,
      text: fields[2] as String,
      updatedAt: fields[3] as String,
      sendDate: fields[4] as String?,
      deleted: fields[5] as bool,
      source: fields[6] as String?,
      type: fields[7] as String?,
      status: fields[8] as Status?,
    );
  }

  @override
  void write(BinaryWriter writer, Fact obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.text)
      ..writeByte(3)
      ..write(obj.updatedAt)
      ..writeByte(4)
      ..write(obj.sendDate)
      ..writeByte(5)
      ..write(obj.deleted)
      ..writeByte(6)
      ..write(obj.source)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fact _$FactFromJson(Map<String, dynamic> json) {
  return Fact(
    id: json['_id'] as String,
    userId: json['user'] as int?,
    text: json['text'] as String,
    updatedAt: json['updatedAt'] as String,
    sendDate: json['sendDate'] as String?,
    deleted: json['deleted'] as bool,
    source: json['source'] as String?,
    type: json['type'] as String?,
    status: json['status'] == null
        ? null
        : Status.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FactToJson(Fact instance) => <String, dynamic>{
      '_id': instance.id,
      'user': instance.userId,
      'text': instance.text,
      'updatedAt': instance.updatedAt,
      'sendDate': instance.sendDate,
      'deleted': instance.deleted,
      'source': instance.source,
      'type': instance.type,
      'status': instance.status,
    };
