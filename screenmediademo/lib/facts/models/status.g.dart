// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

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
