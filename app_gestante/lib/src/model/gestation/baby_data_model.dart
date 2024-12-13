// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'baby_data_model.g.dart';

enum BabySex {
  female,
  male,
}

enum BirthType {
  vaginal,
  cesarean,
}

class BabyData extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  DateTimeColumn get birthDate => dateTime()();
  DateTimeColumn get birthTime => dateTime()();
  IntColumn get babySex => intEnum<BabySex>()();
  IntColumn get weekGestationAge => integer()();
  IntColumn get dayGestationAge => integer()();
  RealColumn get weight => real()();
  RealColumn get height => real()();
  RealColumn get headCircumference => real()();
  IntColumn get firstMinuteApgar => integer()();
  IntColumn get fifthMinuteApgar => integer()();
  IntColumn get birthType => intEnum<BirthType>()();
  BoolColumn get instrumentedBirth => boolean()();
  BoolColumn get inducedLabor => boolean()();
}

@JsonSerializable()
class BabyDataModel {
  final String name;
  final DateTime birthDate;
  final DateTime birthTime;
  final BabySex babySex;
  final int weekGestationalAge;
  final int dayGestationalAge;
  final double weight;
  final double height;
  final double headCircumference;
  final int firstMinuteApgar;
  final int fifthMinuteApgar;
  final BirthType birthType;
  final bool instrumentedBirth;
  final bool inducedLabor;

  BabyDataModel({
    required this.name,
    required this.birthDate,
    required this.birthTime,
    required this.babySex,
    required this.weekGestationalAge,
    required this.dayGestationalAge,
    required this.weight,
    required this.height,
    required this.headCircumference,
    required this.firstMinuteApgar,
    required this.fifthMinuteApgar,
    required this.birthType,
    required this.instrumentedBirth,
    required this.inducedLabor,
  });

  factory BabyDataModel.fromJson(Map<String, dynamic> json) =>
      _$BabyDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$BabyDataModelToJson(this);

  BabyDataModel copyWith({
    String? name,
    DateTime? birthDate,
    DateTime? birthTime,
    BabySex? babySex,
    int? weekGestationalAge,
    int? dayGestationalAge,
    double? weight,
    double? height,
    double? headCircumference,
    int? firstMinuteApgar,
    int? fifthMinuteApgar,
    BirthType? birthType,
    bool? instrumentedBirth,
    bool? inducedLabor,
  }) {
    return BabyDataModel(
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      birthTime: birthTime ?? this.birthTime,
      babySex: babySex ?? this.babySex,
      weekGestationalAge: weekGestationalAge ?? this.weekGestationalAge,
      dayGestationalAge: dayGestationalAge ?? this.dayGestationalAge,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      headCircumference: headCircumference ?? this.headCircumference,
      firstMinuteApgar: firstMinuteApgar ?? this.firstMinuteApgar,
      fifthMinuteApgar: fifthMinuteApgar ?? this.fifthMinuteApgar,
      birthType: birthType ?? this.birthType,
      instrumentedBirth: instrumentedBirth ?? this.instrumentedBirth,
      inducedLabor: inducedLabor ?? this.inducedLabor,
    );
  }
}
