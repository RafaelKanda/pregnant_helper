import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, PreviousPregnancy>> getHistory() async {
    try {
      final history = await (db.select(db.previousPregnancies)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(history);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, PreviousPregnancy>> saveHistory(
      PreviousPregnancy history) async {
    try {
      await db.into(db.previousPregnancies).insert(
            PreviousPregnanciesCompanion(
              pregnancyNumber: Value(history.pregnancyNumber),
              givenBirthNumber: Value(history.givenBirthNumber),
              abortionsNumber: Value(history.abortionsNumber),
            ),
          );
      final saved = await (db.select(db.previousPregnancies)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(saved);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, PreviousPregnancy>> updateHistory(
      PreviousPregnancy history) async {
    try {
      await (db.update(db.previousPregnancies)..where((p) => p.id.equals(1)))
          .write(
        PreviousPregnanciesCompanion(
          pregnancyNumber: Value(history.pregnancyNumber),
          givenBirthNumber: Value(history.givenBirthNumber),
          abortionsNumber: Value(history.abortionsNumber),
        ),
      );
      final updated = await (db.select(db.previousPregnancies)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(updated);
    } catch (e) {
      if (e.toString().contains('No element')) {
        return saveHistory(history);
      }
      return Left(RepositoryException());
    }
  }
}
