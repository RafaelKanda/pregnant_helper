// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthModel _$BirthModelFromJson(Map<String, dynamic> json) => BirthModel(
      whoCut: $enumDecode(_$WhoCutUmbilicalCordEnumMap, json['whoCut']),
      collectStemCells: json['collectStemCells'] as bool,
      skinBabyContact:
          $enumDecode(_$SkinBabyContactEnumMap, json['skinBabyContact']),
      breastfeedFirstHour: $enumDecode(
          _$BreastfeedFirstHourEnumMap, json['breastfeedFirstHour']),
      breastfeedRestrictions: json['breastfeedRestrictions'] as bool,
      firstBath: $enumDecode(_$FirstBathEnumMap, json['firstBath']),
    );

Map<String, dynamic> _$BirthModelToJson(BirthModel instance) =>
    <String, dynamic>{
      'whoCut': _$WhoCutUmbilicalCordEnumMap[instance.whoCut]!,
      'collectStemCells': instance.collectStemCells,
      'skinBabyContact': _$SkinBabyContactEnumMap[instance.skinBabyContact]!,
      'breastfeedFirstHour':
          _$BreastfeedFirstHourEnumMap[instance.breastfeedFirstHour]!,
      'breastfeedRestrictions': instance.breastfeedRestrictions,
      'firstBath': _$FirstBathEnumMap[instance.firstBath]!,
    };

const _$WhoCutUmbilicalCordEnumMap = {
  WhoCutUmbilicalCord.professional: 'professional',
  WhoCutUmbilicalCord.companion: 'companion',
  WhoCutUmbilicalCord.me: 'me',
  WhoCutUmbilicalCord.dontKnow: 'dontKnow',
};

const _$SkinBabyContactEnumMap = {
  SkinBabyContact.yes: 'yes',
  SkinBabyContact.no: 'no',
  SkinBabyContact.dontKnow: 'dontKnow',
};

const _$BreastfeedFirstHourEnumMap = {
  BreastfeedFirstHour.yes: 'yes',
  BreastfeedFirstHour.no: 'no',
  BreastfeedFirstHour.dontKnow: 'dontKnow',
};

const _$FirstBathEnumMap = {
  FirstBath.professional: 'professional',
  FirstBath.companion: 'companion',
  FirstBath.me: 'me',
  FirstBath.dontKnow: 'dontKnow',
};
