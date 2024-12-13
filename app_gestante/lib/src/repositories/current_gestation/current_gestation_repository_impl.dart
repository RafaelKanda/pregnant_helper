import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './current_gestation_repository.dart';

class CurrentGestationRepositoryImpl implements CurrentGestationRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, CurrentPregnancyData>>
      getGestation() async {
    try {
      final current = await (db.select(db.currentPregnancy)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(current);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, CurrentPregnancyData>> saveGestation(
      CurrentPregnancyData current) async {
    try {
      await db.into(db.currentPregnancy).insert(
            CurrentPregnancyCompanion(
              lastMenstrualPeriod: Value(current.lastMenstrualPeriod),
              firstUltrasound: Value(current.firstUltrasound),
            ),
          );
      final saved = await (db.select(db.currentPregnancy)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(saved);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, CurrentPregnancyData>> updateGestation(
      CurrentPregnancyData current) async {
    try {
      await (db.update(db.currentPregnancy)..where((p) => p.id.equals(1)))
          .write(
        CurrentPregnancyCompanion(
          lastMenstrualPeriod: Value(current.lastMenstrualPeriod),
          firstUltrasound: Value(current.firstUltrasound),
        ),
      );
      final updated = await (db.select(db.currentPregnancy)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(updated);
    } catch (e) {
      if (e.toString().contains('No element')) {
        return saveGestation(current);
      }
      return Left(RepositoryException());
    }
  }
}
