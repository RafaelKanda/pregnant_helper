// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'birth_moment_model.g.dart';

enum BirthWay {
  vaginal,
  cesarean,
  dontKnow,
}

enum Anesthesia {
  yes,
  no,
  dontKnow,
}

enum VaginalCut {
  yes,
  no,
  dontKnow,
}

enum Positions {
  lyingDown,
  sitting,
  crouched,
  aside,
  onKnees,
  standing,
  dontKnow,
  otherPosition,
}

class BirthMoment extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get birthWay => intEnum<BirthWay>()();
  IntColumn get anesthesia => intEnum<Anesthesia>()();
  IntColumn get vaginalCut => intEnum<VaginalCut>()();
  IntColumn get preferredPosition => intEnum<Positions>().nullable()();
  TextColumn get otherPosition => text().nullable()();
}

@JsonSerializable()
class BirthMomentModel {
  final BirthWay birthWay;
  final Anesthesia anesthesia;
  final VaginalCut vaginalCut;
  final Positions preferredPosition;
  final String? otherPosition;

  BirthMomentModel({
    required this.birthWay,
    required this.anesthesia,
    required this.vaginalCut,
    required this.preferredPosition,
    this.otherPosition,
  });

  factory BirthMomentModel.fromJson(Map<String, dynamic> json) =>
      _$BirthMomentModelFromJson(json);

  Map<String, dynamic> toJson() => _$BirthMomentModelToJson(this);

  BirthMomentModel copyWith({
    BirthWay? birthWay,
    Anesthesia? anesthesia,
    VaginalCut? vaginalCut,
    Positions? preferredPosition,
    String? otherPosition,
  }) {
    return BirthMomentModel(
      birthWay: birthWay ?? this.birthWay,
      anesthesia: anesthesia ?? this.anesthesia,
      vaginalCut: vaginalCut ?? this.vaginalCut,
      preferredPosition: preferredPosition ?? this.preferredPosition,
      otherPosition: otherPosition ?? this.otherPosition,
    );
  }
}
