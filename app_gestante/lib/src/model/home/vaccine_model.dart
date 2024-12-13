import 'package:drift/drift.dart';

class Vaccine extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BoolColumn get used => boolean()();
}
