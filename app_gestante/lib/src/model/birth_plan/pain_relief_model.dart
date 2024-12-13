// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pain_relief_model.g.dart';

enum NeedPainRelief {
  yes,
  no,
  dontKnow,
}

class PainRelief extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get painRelief => intEnum<NeedPainRelief>()();
  BoolColumn get massage => boolean()();
  BoolColumn get ballExercises => boolean()();
  BoolColumn get breathRelaxExercises => boolean()();
  BoolColumn get showerBath => boolean()();
  BoolColumn get bathtubBath => boolean()();
  BoolColumn get acupuncture => boolean()();
  BoolColumn get acupressure => boolean()();
  BoolColumn get otherMethod => boolean()();
}

@JsonSerializable()
class PainReliefModel {
  final NeedPainRelief painRelief;
  final bool massage;
  final bool ballExercises;
  final bool breathRelaxExercises;
  final bool showerBath;
  final bool bathtubBath;
  final bool acupuncture;
  final bool acupressure;
  final bool otherMethod;

  PainReliefModel({
    required this.painRelief,
    required this.massage,
    required this.ballExercises,
    required this.breathRelaxExercises,
    required this.showerBath,
    required this.bathtubBath,
    required this.acupuncture,
    required this.acupressure,
    required this.otherMethod,
  });

  factory PainReliefModel.fromJson(Map<String, dynamic> json) =>
      _$PainReliefModelFromJson(json);

  Map<String, dynamic> toJson() => _$PainReliefModelToJson(this);

  PainReliefModel copyWith({
    NeedPainRelief? painRelief,
    bool? massage,
    bool? ballExercises,
    bool? breathRelaxExercises,
    bool? showerBath,
    bool? bathtubBath,
    bool? acupuncture,
    bool? acupressure,
    bool? otherMethod,
  }) {
    return PainReliefModel(
      painRelief: painRelief ?? this.painRelief,
      massage: massage ?? this.massage,
      ballExercises: ballExercises ?? this.ballExercises,
      breathRelaxExercises: breathRelaxExercises ?? this.breathRelaxExercises,
      showerBath: showerBath ?? this.showerBath,
      bathtubBath: bathtubBath ?? this.bathtubBath,
      acupuncture: acupuncture ?? this.acupuncture,
      acupressure: acupressure ?? this.acupressure,
      otherMethod: otherMethod ?? this.otherMethod,
    );
  }
}
