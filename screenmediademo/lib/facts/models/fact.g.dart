// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fact _$FactFromJson(Map<String, dynamic> json) {
  return Fact(
    id: json['_id'] as int,
    userId: json['user'] as int,
    text: json['text'] as String,
    updatedAt: json['updatedAt'] as int,
    sendDate: json['sendDate'] as int,
    deleted: json['deleted'] as bool,
    source: json['source'] as String,
    type: json['type'] as String,
    status: Status.fromJson(json['status'] as Map<String, dynamic>),
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
