import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:screenmediademo/facts/models/status.dart';

part 'fact.g.dart';

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

  @JsonKey(name: '_id')
  final int id;
  @JsonKey(name: 'user')
  final int userId;
  final String text;
  final int updatedAt;
  final int sendDate;
  final bool deleted;
  final String source;
  final String type;
  final Status status;

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
