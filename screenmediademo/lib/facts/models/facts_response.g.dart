// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facts_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FactsResponseAdapter extends TypeAdapter<FactsResponse> {
  @override
  final int typeId = 0;

  @override
  FactsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FactsResponse(
      (fields[0] as List).cast<Fact>(),
    );
  }

  @override
  void write(BinaryWriter writer, FactsResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.facts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FactsResponse _$FactsResponseFromJson(Map<String, dynamic> json) {
  return FactsResponse(
    (json['Result'] as List<dynamic>)
        .map((e) => Fact.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FactsResponseToJson(FactsResponse instance) =>
    <String, dynamic>{
      'Result': instance.facts,
    };
