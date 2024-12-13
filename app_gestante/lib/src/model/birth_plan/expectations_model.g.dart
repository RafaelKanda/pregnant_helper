// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expectations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpectationsModel _$ExpectationsModelFromJson(Map<String, dynamic> json) =>
    ExpectationsModel(
      companion: $enumDecode(_$AlternativesEnumMap, json['companion']),
      shaveIntimateHair:
          $enumDecode(_$AlternativesEnumMap, json['shaveIntimateHair']),
      bowelWashOrSuppository:
          $enumDecode(_$AlternativesEnumMap, json['bowelWashOrSuppository']),
      lowLightEnvironment:
          $enumDecode(_$AlternativesEnumMap, json['lowLightEnvironment']),
      listenToMusic: $enumDecode(_$AlternativesEnumMap, json['listenToMusic']),
      drinkLiquids: $enumDecode(_$AlternativesEnumMap, json['drinkLiquids']),
      recordPhotosOrVideos:
          $enumDecode(_$AlternativesEnumMap, json['recordPhotosOrVideos']),
    );

Map<String, dynamic> _$ExpectationsModelToJson(ExpectationsModel instance) =>
    <String, dynamic>{
      'companion': _$AlternativesEnumMap[instance.companion]!,
      'shaveIntimateHair': _$AlternativesEnumMap[instance.shaveIntimateHair]!,
      'bowelWashOrSuppository':
          _$AlternativesEnumMap[instance.bowelWashOrSuppository]!,
      'lowLightEnvironment':
          _$AlternativesEnumMap[instance.lowLightEnvironment]!,
      'listenToMusic': _$AlternativesEnumMap[instance.listenToMusic]!,
      'drinkLiquids': _$AlternativesEnumMap[instance.drinkLiquids]!,
      'recordPhotosOrVideos':
          _$AlternativesEnumMap[instance.recordPhotosOrVideos]!,
    };

const _$AlternativesEnumMap = {
  Alternatives.yes: 'yes',
  Alternatives.no: 'no',
  Alternatives.dontKnow: 'dontKnow',
};
