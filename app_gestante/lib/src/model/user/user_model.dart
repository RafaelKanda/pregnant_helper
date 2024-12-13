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

class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text()();
  IntColumn get education => intEnum<Education>().nullable()();
  IntColumn get familyIncome => intEnum<FamilyIncome>().nullable()();
}
