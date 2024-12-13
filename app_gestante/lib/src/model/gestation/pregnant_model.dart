// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pregnant_model.g.dart';

class Pregnant extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get socialName => text().nullable()();
  TextColumn get birthDate => text()();
  TextColumn get cpf => text()();
  TextColumn get nationalHealthCardNumber => text().nullable()();
  TextColumn get preNatalPlace => text().nullable()();
  TextColumn get profissionalName => text().nullable()();
  TextColumn get prenatalPlaceContact => text().nullable()();
}

@JsonSerializable()
class PregnantModel {
  final String name;
  final String? socialName;
  final String birthDate;
  final String cpf;
  final String? nationalHealthCardNumber;
  final String? preNatalPlace;
  final String? profissionalName;
  final String? prenatalPlaceContact;

  PregnantModel({
    required this.name,
    required this.socialName,
    required this.birthDate,
    required this.cpf,
    required this.nationalHealthCardNumber,
    required this.preNatalPlace,
    required this.profissionalName,
    required this.prenatalPlaceContact,
  });

  factory PregnantModel.fromJson(Map<String, dynamic> json) =>
      _$PregnantModelFromJson(json);

  Map<String, dynamic> toJson() => _$PregnantModelToJson(this);

  factory PregnantModel.fromData(PregnantData pregnant) {
    return PregnantModel(
      name: pregnant.name,
      socialName: pregnant.socialName,
      birthDate: pregnant.birthDate,
      cpf: pregnant.cpf,
      nationalHealthCardNumber: pregnant.nationalHealthCardNumber,
      preNatalPlace: pregnant.preNatalPlace,
      profissionalName: pregnant.profissionalName,
      prenatalPlaceContact: pregnant.prenatalPlaceContact,
    );
  }

  PregnantModel copyWith({
    String? name,
    String? socialName,
    String? birthDate,
    String? cpf,
    String? nationalHealthCardNumber,
    String? preNatalPlace,
    String? profissionalName,
    String? prenatalPlaceContact,
  }) {
    return PregnantModel(
      name: name ?? this.name,
      socialName: socialName ?? this.socialName,
      birthDate: birthDate ?? this.birthDate,
      cpf: cpf ?? this.cpf,
      nationalHealthCardNumber:
          nationalHealthCardNumber ?? this.nationalHealthCardNumber,
      preNatalPlace: preNatalPlace ?? this.preNatalPlace,
      profissionalName: profissionalName ?? this.profissionalName,
      prenatalPlaceContact: prenatalPlaceContact ?? this.prenatalPlaceContact,
    );
  }
}
