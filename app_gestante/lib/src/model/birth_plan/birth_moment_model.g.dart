// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_moment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthMomentModel _$BirthMomentModelFromJson(Map<String, dynamic> json) =>
    BirthMomentModel(
      birthWay: $enumDecode(_$BirthWayEnumMap, json['birthWay']),
      anesthesia: $enumDecode(_$AnesthesiaEnumMap, json['anesthesia']),
      vaginalCut: $enumDecode(_$VaginalCutEnumMap, json['vaginalCut']),
      preferredPosition:
          $enumDecode(_$PositionsEnumMap, json['preferredPosition']),
      otherPosition: json['otherPosition'] as String?,
    );

Map<String, dynamic> _$BirthMomentModelToJson(BirthMomentModel instance) =>
    <String, dynamic>{
      'birthWay': _$BirthWayEnumMap[instance.birthWay]!,
      'anesthesia': _$AnesthesiaEnumMap[instance.anesthesia]!,
      'vaginalCut': _$VaginalCutEnumMap[instance.vaginalCut]!,
      'preferredPosition': _$PositionsEnumMap[instance.preferredPosition]!,
      'otherPosition': instance.otherPosition,
    };

const _$BirthWayEnumMap = {
  BirthWay.vaginal: 'vaginal',
  BirthWay.cesarean: 'cesarean',
  BirthWay.dontKnow: 'dontKnow',
};

const _$AnesthesiaEnumMap = {
  Anesthesia.yes: 'yes',
  Anesthesia.no: 'no',
  Anesthesia.dontKnow: 'dontKnow',
};

const _$VaginalCutEnumMap = {
  VaginalCut.yes: 'yes',
  VaginalCut.no: 'no',
  VaginalCut.dontKnow: 'dontKnow',
};

const _$PositionsEnumMap = {
  Positions.lyingDown: 'lyingDown',
  Positions.sitting: 'sitting',
  Positions.crouched: 'crouched',
  Positions.aside: 'aside',
  Positions.onKnees: 'onKnees',
  Positions.standing: 'standing',
  Positions.dontKnow: 'dontKnow',
  Positions.otherPosition: 'otherPosition',
};
