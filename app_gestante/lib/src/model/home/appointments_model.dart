import 'package:drift/drift.dart';

class Appointments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get appointmentDate => text()();
  TextColumn get description => text()();
}
