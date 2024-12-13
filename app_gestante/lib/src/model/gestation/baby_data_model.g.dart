// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baby_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BabyDataModel _$BabyDataModelFromJson(Map<String, dynamic> json) =>
    BabyDataModel(
      name: json['name'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      birthTime: DateTime.parse(json['birthTime'] as String),
      babySex: $enumDecode(_$BabySexEnumMap, json['babySex']),
      weekGestationalAge: (json['weekGestationalAge'] as num).toInt(),
      dayGestationalAge: (json['dayGestationalAge'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      headCircumference: (json['headCircumference'] as num).toDouble(),
      firstMinuteApgar: (json['firstMinuteApgar'] as num).toInt(),
      fifthMinuteApgar: (json['fifthMinuteApgar'] as num).toInt(),
      birthType: $enumDecode(_$BirthTypeEnumMap, json['birthType']),
      instrumentedBirth: json['instrumentedBirth'] as bool,
      inducedLabor: json['inducedLabor'] as bool,
    );

Map<String, dynamic> _$BabyDataModelToJson(BabyDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthDate': instance.birthDate.toIso8601String(),
      'birthTime': instance.birthTime.toIso8601String(),
      'babySex': _$BabySexEnumMap[instance.babySex]!,
      'weekGestationalAge': instance.weekGestationalAge,
      'dayGestationalAge': instance.dayGestationalAge,
      'weight': instance.weight,
      'height': instance.height,
      'headCircumference': instance.headCircumference,
      'firstMinuteApgar': instance.firstMinuteApgar,
      'fifthMinuteApgar': instance.fifthMinuteApgar,
      'birthType': _$BirthTypeEnumMap[instance.birthType]!,
      'instrumentedBirth': instance.instrumentedBirth,
      'inducedLabor': instance.inducedLabor,
    };

const _$BabySexEnumMap = {
  BabySex.female: 'female',
  BabySex.male: 'male',
};

const _$BirthTypeEnumMap = {
  BirthType.vaginal: 'vaginal',
  BirthType.cesarean: 'cesarean',
};
