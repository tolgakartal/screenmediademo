import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:screenmediademo/facts/models/fact.dart';
import 'package:screenmediademo/utils/hive_utils.dart';

part 'facts_response.g.dart';

@HiveType(typeId: HiveUtils.factsResponseId)
@JsonSerializable()
class FactsResponse {
  @HiveField(0)
  @JsonKey(name: 'Result')
  final List<Fact> facts;

  FactsResponse(
    this.facts,
  );

  Map<String, dynamic> toJson() => _$FactsResponseToJson(this);

  factory FactsResponse.fromJson(Map<String, dynamic> json) => _$FactsResponseFromJson(json);
}
