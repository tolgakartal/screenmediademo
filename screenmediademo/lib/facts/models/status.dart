import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:screenmediademo/utils/hive_utils.dart';

part 'status.g.dart';

@HiveType(typeId: HiveUtils.factStatusId)
@JsonSerializable()
class Status {
  const Status(
    this.verified,
    this.feedback,
    this.sentCount,
  );

  @HiveField(0)
  final bool verified;
  @HiveField(1)
  final String feedback;
  @HiveField(2)
  final int sentCount;

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
