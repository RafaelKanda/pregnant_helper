// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pain_relief_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PainReliefModel _$PainReliefModelFromJson(Map<String, dynamic> json) =>
    PainReliefModel(
      painRelief: $enumDecode(_$NeedPainReliefEnumMap, json['painRelief']),
      massage: json['massage'] as bool,
      ballExercises: json['ballExercises'] as bool,
      breathRelaxExercises: json['breathRelaxExercises'] as bool,
      showerBath: json['showerBath'] as bool,
      bathtubBath: json['bathtubBath'] as bool,
      acupuncture: json['acupuncture'] as bool,
      acupressure: json['acupressure'] as bool,
      otherMethod: json['otherMethod'] as bool,
    );

Map<String, dynamic> _$PainReliefModelToJson(PainReliefModel instance) =>
    <String, dynamic>{
      'painRelief': _$NeedPainReliefEnumMap[instance.painRelief]!,
      'massage': instance.massage,
      'ballExercises': instance.ballExercises,
      'breathRelaxExercises': instance.breathRelaxExercises,
      'showerBath': instance.showerBath,
      'bathtubBath': instance.bathtubBath,
      'acupuncture': instance.acupuncture,
      'acupressure': instance.acupressure,
      'otherMethod': instance.otherMethod,
    };

const _$NeedPainReliefEnumMap = {
  NeedPainRelief.yes: 'yes',
  NeedPainRelief.no: 'no',
  NeedPainRelief.dontKnow: 'dontKnow',
};
