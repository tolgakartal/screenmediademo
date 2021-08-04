import 'package:json_annotation/json_annotation.dart';
import 'package:screenmediademo/facts/models/fact.dart';

part 'facts_response.g.dart';

@JsonSerializable()
class FactsResponse {
  @JsonKey(name: 'Result')
  final List<Fact> facts;

  FactsResponse(
    this.facts,
  );

  Map<String, dynamic> toJson() => _$FactsResponseToJson(this);

  factory FactsResponse.fromJson(Map<String, dynamic> json) => _$FactsResponseFromJson(json);
}
