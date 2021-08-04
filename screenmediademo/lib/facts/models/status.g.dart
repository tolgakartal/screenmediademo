// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StatusAdapter extends TypeAdapter<Status> {
  @override
  final int typeId = 2;

  @override
  Status read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Status(
      fields[0] as bool,
      fields[1] as String,
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Status obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.verified)
      ..writeByte(1)
      ..write(obj.feedback)
      ..writeByte(2)
      ..write(obj.sentCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) {
  return Status(
    json['verified'] as bool,
    json['feedback'] as String,
    json['sentCount'] as int,
  );
}

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'verified': instance.verified,
      'feedback': instance.feedback,
      'sentCount': instance.sentCount,
    };
