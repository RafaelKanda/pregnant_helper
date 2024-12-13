// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'observations_model.g.dart';

class Observations extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get observations => text()();
}

@JsonSerializable()
class ObservationsModel {
  final String observations;

  ObservationsModel({
    required this.observations,
  });

  factory ObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ObservationsModelToJson(this);

  ObservationsModel copyWith({
    String? observations,
  }) {
    return ObservationsModel(
      observations: observations ?? this.observations,
    );
  }
}
