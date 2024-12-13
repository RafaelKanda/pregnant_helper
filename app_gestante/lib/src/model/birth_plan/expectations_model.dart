// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expectations_model.g.dart';

enum Alternatives {
  yes,
  no,
  dontKnow,
}

class Expectations extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get companion => intEnum<Alternatives>()();
  IntColumn get shaveIntimateHair => intEnum<Alternatives>()();
  IntColumn get bowelWashOrSuppository => intEnum<Alternatives>()();
  IntColumn get lowLightEnvironment => intEnum<Alternatives>()();
  IntColumn get listenToMusic => intEnum<Alternatives>()();
  IntColumn get drinkLiquids => intEnum<Alternatives>()();
  IntColumn get recordPhotosOrVideos => intEnum<Alternatives>()();
}

@JsonSerializable()
class ExpectationsModel {
  final Alternatives companion;
  final Alternatives shaveIntimateHair;
  final Alternatives bowelWashOrSuppository;
  final Alternatives lowLightEnvironment;
  final Alternatives listenToMusic;
  final Alternatives drinkLiquids;
  final Alternatives recordPhotosOrVideos;

  ExpectationsModel({
    required this.companion,
    required this.shaveIntimateHair,
    required this.bowelWashOrSuppository,
    required this.lowLightEnvironment,
    required this.listenToMusic,
    required this.drinkLiquids,
    required this.recordPhotosOrVideos,
  });

  factory ExpectationsModel.fromJson(Map<String, dynamic> json) =>
      _$ExpectationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExpectationsModelToJson(this);

  ExpectationsModel copyWith({
    Alternatives? companion,
    Alternatives? shaveIntimateHair,
    Alternatives? bowelWashOrSuppository,
    Alternatives? lowLightEnvironment,
    Alternatives? listenToMusic,
    Alternatives? drinkLiquids,
    Alternatives? recordPhotosOrVideos,
  }) {
    return ExpectationsModel(
      companion: companion ?? this.companion,
      shaveIntimateHair: shaveIntimateHair ?? this.shaveIntimateHair,
      bowelWashOrSuppository:
          bowelWashOrSuppository ?? this.bowelWashOrSuppository,
      lowLightEnvironment: lowLightEnvironment ?? this.lowLightEnvironment,
      listenToMusic: listenToMusic ?? this.listenToMusic,
      drinkLiquids: drinkLiquids ?? this.drinkLiquids,
      recordPhotosOrVideos: recordPhotosOrVideos ?? this.recordPhotosOrVideos,
    );
  }
}
