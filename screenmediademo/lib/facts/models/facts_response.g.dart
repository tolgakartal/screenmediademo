// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facts_response.dart';

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
