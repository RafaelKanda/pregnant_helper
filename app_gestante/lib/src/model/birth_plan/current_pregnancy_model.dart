// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_pregnancy_model.g.dart';

class CurrentPregnancy extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get lastMenstrualPeriod => text().nullable()();
  TextColumn get firstUltrasound => text().nullable()();
}

@JsonSerializable()
class CurrentPregnancyModel {
  final String lastMenstrualPeriod;
  final String firstUltrasound;
  final int weekUltrasoundResult;
  final int dayUltrasoundResult;

  CurrentPregnancyModel({
    required this.lastMenstrualPeriod,
    required this.firstUltrasound,
    required this.weekUltrasoundResult,
    required this.dayUltrasoundResult,
  });

  factory CurrentPregnancyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentPregnancyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentPregnancyModelToJson(this);

  CurrentPregnancyModel copyWith({
    String? lastMenstrualPeriod,
    String? firstUltrasound,
    int? weekUltrasoundResult,
    int? dayUltrasoundResult,
  }) {
    return CurrentPregnancyModel(
      lastMenstrualPeriod: lastMenstrualPeriod ?? this.lastMenstrualPeriod,
      firstUltrasound: firstUltrasound ?? this.firstUltrasound,
      weekUltrasoundResult: weekUltrasoundResult ?? this.weekUltrasoundResult,
      dayUltrasoundResult: dayUltrasoundResult ?? this.dayUltrasoundResult,
    );
  }
}
