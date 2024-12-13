// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';

// part 'previous_pregnancies_model.g.dart';

class PreviousPregnancies extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pregnancyNumber => integer().nullable()();
  IntColumn get givenBirthNumber => integer().nullable()();
  IntColumn get abortionsNumber => integer().nullable()();
}

// @JsonSerializable()
// class PreviousPregnanciesModel {
//   final int pregnancyNumber;
//   final int givenBirthNumber;
//   final int abortionsNumber;

//   PreviousPregnanciesModel({
//     required this.pregnancyNumber,
//     required this.givenBirthNumber,
//     required this.abortionsNumber,
//   });

//   factory PreviousPregnanciesModel.fromJson(Map<String, dynamic> json) =>
//       _$PreviousPregnanciesModelFromJson(json);

//   Map<String, dynamic> toJson() => _$PreviousPregnanciesModelToJson(this);

//   PreviousPregnanciesModel copyWith({
//     int? pregnancyNumber,
//     int? givenBirthNumber,
//     int? abortionsNumber,
//   }) {
//     return PreviousPregnanciesModel(
//       pregnancyNumber: pregnancyNumber ?? this.pregnancyNumber,
//       givenBirthNumber: givenBirthNumber ?? this.givenBirthNumber,
//       abortionsNumber: abortionsNumber ?? this.abortionsNumber,
//     );
//   }
// }
