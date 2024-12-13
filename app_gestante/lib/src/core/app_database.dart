import 'package:app_gestante/src/model/birth_plan/birth_model.dart';
import 'package:app_gestante/src/model/birth_plan/birth_moment_model.dart';
import 'package:app_gestante/src/model/birth_plan/current_pregnancy_model.dart';
import 'package:app_gestante/src/model/birth_plan/expectations_model.dart';
import 'package:app_gestante/src/model/birth_plan/observations_model.dart';
import 'package:app_gestante/src/model/birth_plan/pain_relief_model.dart';
import 'package:app_gestante/src/model/birth_plan/previous_pregnancies_model.dart';
import 'package:app_gestante/src/model/gestation/baby_data_model.dart';
import 'package:app_gestante/src/model/gestation/maternity_model.dart';
import 'package:app_gestante/src/model/gestation/pregnant_model.dart';
import 'package:app_gestante/src/model/gestation/prenatal_appointment_model.dart';
import 'package:app_gestante/src/model/home/appointments_model.dart';
import 'package:app_gestante/src/model/home/exams_model.dart';
import 'package:app_gestante/src/model/home/medications_model.dart';
import 'package:app_gestante/src/model/home/vaccine_model.dart';
import 'package:app_gestante/src/model/user/user_model.dart';
import 'package:drift/drift.dart';
import 'package:drift_sqflite/drift_sqflite.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Birth,
  BirthMoment,
  CurrentPregnancy,
  Expectations,
  Observations,
  PainRelief,
  PreviousPregnancies,
  BabyData,
  Maternity,
  Pregnant,
  PrenatalAppointment,
  User,
  Appointments,
  Exams,
  Medications,
  Vaccine,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  static QueryExecutor _openConnection() {
    return SqfliteQueryExecutor.inDatabaseFolder(path: 'db.sqlite');
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          if (from < 2) {
            await m.createAll();
          }
        },
      );

  @override
  int get schemaVersion => 2;
}
