import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:screenmediademo/facts/models/status.dart';
import 'package:screenmediademo/utils/hive_utils.dart';

part 'fact.g.dart';

@HiveType(typeId: HiveUtils.factId)
@JsonSerializable()
class Fact extends Equatable {
  const Fact({
    required this.id,
    required this.userId,
    required this.text,
    required this.updatedAt,
    required this.sendDate,
    required this.deleted,
    required this.source,
    required this.type,
    required this.status,
  });

  @HiveField(0)
  @JsonKey(name: '_id')
  final String id;

  @HiveField(1)
  @JsonKey(name: 'user')
  final int? userId;

  @HiveField(2)
  final String text;

  @HiveField(3)
  final String updatedAt;

  @HiveField(4)
  final String? sendDate;

  @HiveField(5)
  final bool deleted;

  @HiveField(6)
  final String? source;

  @HiveField(7)
  final String? type;

  @HiveField(8)
  final Status? status;

  Map<String, dynamic> toJson() => _$FactToJson(this);

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);

  @override
  List<Object?> get props => [
        id,
        userId,
        text,
        updatedAt,
        sendDate,
        deleted,
        source,
        type,
        status,
      ];
}
