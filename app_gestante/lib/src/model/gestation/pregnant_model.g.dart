// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pregnant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PregnantModel _$PregnantModelFromJson(Map<String, dynamic> json) =>
    PregnantModel(
      name: json['name'] as String,
      socialName: json['socialName'] as String?,
      birthDate: json['birthDate'] as String,
      cpf: json['cpf'] as String,
      nationalHealthCardNumber: json['nationalHealthCardNumber'] as String?,
      preNatalPlace: json['preNatalPlace'] as String?,
      profissionalName: json['profissionalName'] as String?,
      prenatalPlaceContact: json['prenatalPlaceContact'] as String?,
    );

Map<String, dynamic> _$PregnantModelToJson(PregnantModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'socialName': instance.socialName,
      'birthDate': instance.birthDate,
      'cpf': instance.cpf,
      'nationalHealthCardNumber': instance.nationalHealthCardNumber,
      'preNatalPlace': instance.preNatalPlace,
      'profissionalName': instance.profissionalName,
      'prenatalPlaceContact': instance.prenatalPlaceContact,
    };
