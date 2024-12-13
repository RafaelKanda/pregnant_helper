// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_pregnancy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentPregnancyModel _$CurrentPregnancyModelFromJson(
        Map<String, dynamic> json) =>
    CurrentPregnancyModel(
      lastMenstrualPeriod: json['lastMenstrualPeriod'] as String,
      firstUltrasound: json['firstUltrasound'] as String,
      weekUltrasoundResult: (json['weekUltrasoundResult'] as num).toInt(),
      dayUltrasoundResult: (json['dayUltrasoundResult'] as num).toInt(),
    );

Map<String, dynamic> _$CurrentPregnancyModelToJson(
        CurrentPregnancyModel instance) =>
    <String, dynamic>{
      'lastMenstrualPeriod': instance.lastMenstrualPeriod,
      'firstUltrasound': instance.firstUltrasound,
      'weekUltrasoundResult': instance.weekUltrasoundResult,
      'dayUltrasoundResult': instance.dayUltrasoundResult,
    };
