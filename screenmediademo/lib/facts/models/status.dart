import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  final bool verified;
  final String feedback;
  final int sentCount;

  Status(
    this.verified,
    this.feedback,
    this.sentCount,
  );

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
