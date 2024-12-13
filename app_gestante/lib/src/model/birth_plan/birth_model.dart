import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'birth_model.g.dart';

enum WhoCutUmbilicalCord {
  professional,
  companion,
  me,
  dontKnow,
}

enum SkinBabyContact {
  yes,
  no,
  dontKnow,
}

enum BreastfeedFirstHour {
  yes,
  no,
  dontKnow,
}

enum FirstBath {
  professional,
  companion,
  me,
  dontKnow,
}

class Birth extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get whoCut => intEnum<WhoCutUmbilicalCord>()();
  BoolColumn get collectStemCells => boolean()();
  IntColumn get skinBabyContact => intEnum<SkinBabyContact>()();
  IntColumn get breastfeedFirstHour => intEnum<BreastfeedFirstHour>()();
  BoolColumn get breastfeedRestrictions => boolean()();
  IntColumn get firstBath => intEnum<FirstBath>()();
}

@JsonSerializable()
class BirthModel {
  final WhoCutUmbilicalCord whoCut;
  final bool collectStemCells;
  final SkinBabyContact skinBabyContact;
  final BreastfeedFirstHour breastfeedFirstHour;
  final bool breastfeedRestrictions;
  final FirstBath firstBath;

  BirthModel({
    required this.whoCut,
    required this.collectStemCells,
    required this.skinBabyContact,
    required this.breastfeedFirstHour,
    required this.breastfeedRestrictions,
    required this.firstBath,
  });

  factory BirthModel.fromJson(Map<String, dynamic> json) =>
      _$BirthModelFromJson(json);

  Map<String, dynamic> toJson() => _$BirthModelToJson(this);

  BirthModel copyWith({
    WhoCutUmbilicalCord? whoCut,
    bool? collectStemCells,
    SkinBabyContact? skinBabyContact,
    BreastfeedFirstHour? breastfeedFirstHour,
    bool? breastfeedRestrictions,
    FirstBath? firstBath,
  }) {
    return BirthModel(
      whoCut: whoCut ?? this.whoCut,
      collectStemCells: collectStemCells ?? this.collectStemCells,
      skinBabyContact: skinBabyContact ?? this.skinBabyContact,
      breastfeedFirstHour: breastfeedFirstHour ?? this.breastfeedFirstHour,
      breastfeedRestrictions:
          breastfeedRestrictions ?? this.breastfeedRestrictions,
      firstBath: firstBath ?? this.firstBath,
    );
  }
}
