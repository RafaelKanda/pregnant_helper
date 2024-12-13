import 'package:drift/drift.dart';

class Exams extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get examDate => text()();
  TextColumn get description => text()();
}
