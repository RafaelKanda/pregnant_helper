import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './expectations_repository.dart';

class ExpectationsRepositoryImpl implements ExpectationsRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, Expectation>> getExpectations() async {
    try {
      final expectations = await (db.select(db.expectations)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(expectations);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, Expectation>> saveExpectations(
      Expectation expectations) async {
    try {
      await db.into(db.expectations).insert(
            ExpectationsCompanion(
              companion: Value(expectations.companion),
              shaveIntimateHair: Value(expectations.shaveIntimateHair),
              bowelWashOrSuppository:
                  Value(expectations.bowelWashOrSuppository),
              lowLightEnvironment: Value(expectations.lowLightEnvironment),
              listenToMusic: Value(expectations.listenToMusic),
              drinkLiquids: Value(expectations.drinkLiquids),
              recordPhotosOrVideos: Value(expectations.recordPhotosOrVideos),
            ),
          );
      final saved = await (db.select(db.expectations)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(saved);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, Expectation>> updateExpectations(
      Expectation expectations) async {
    try {
      await (db.update(db.expectations)..where((p) => p.id.equals(1))).write(
        ExpectationsCompanion(
          companion: Value(expectations.companion),
          shaveIntimateHair: Value(expectations.shaveIntimateHair),
          bowelWashOrSuppository: Value(expectations.bowelWashOrSuppository),
          lowLightEnvironment: Value(expectations.lowLightEnvironment),
          listenToMusic: Value(expectations.listenToMusic),
          drinkLiquids: Value(expectations.drinkLiquids),
          recordPhotosOrVideos: Value(expectations.recordPhotosOrVideos),
        ),
      );
      final updated = await (db.select(db.expectations)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(updated);
    } catch (e) {
      if (e.toString().contains('No element')) {
        return saveExpectations(expectations);
      }
      return Left(RepositoryException());
    }
  }
}
