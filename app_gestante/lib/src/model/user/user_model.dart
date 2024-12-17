import 'package:drift/drift.dart';

enum Education {
  incompleteElementary,
  completeElementary,
  incompleteHighSchool,
  completeHighSchool,
  incompleteGraduation,
  completeGraduation,
  aboveGraduation,
}

enum FamilyIncome {
  untilOne,
  oneToTwo,
  twoToThree,
  threeToFive,
  fiveToTen,
  aboveTen,
}

enum MaritalStatus {
  single,
  married,
  divorced,
  widower,
  stableUnion,
}

class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text()();
  IntColumn get maritalStatus => intEnum<MaritalStatus>().nullable()();
  IntColumn get education => intEnum<Education>().nullable()();
  IntColumn get familyIncome => intEnum<FamilyIncome>().nullable()();
}
