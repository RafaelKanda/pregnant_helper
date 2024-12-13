import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/model/gestation/pregnant_model.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './gestation_repository.dart';

class GestationRepositoryImpl implements GestationRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, PregnantData>> getPregnant() async {
    try {
      final pregnant = await (db.select(db.pregnant)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(pregnant);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, PregnantData>> savePregnant(
      PregnantModel model) async {
    try {
      await db.into(db.pregnant).insert(
            PregnantCompanion(
              name: Value(model.name),
              socialName: Value(model.socialName),
              birthDate: Value(model.birthDate),
              cpf: Value(model.cpf),
              nationalHealthCardNumber: Value(model.nationalHealthCardNumber),
              preNatalPlace: Value(model.preNatalPlace),
              profissionalName: Value(model.profissionalName),
              prenatalPlaceContact: Value(model.prenatalPlaceContact),
            ),
          );

      final pregnant = await (db.select(db.pregnant)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(pregnant);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, PregnantData>> updatePregnant(
      PregnantModel model) async {
    try {
      await (db.update(db.pregnant)..where((p) => p.id.equals(1))).write(
        PregnantCompanion(
          name: Value(model.name),
          socialName: Value(model.socialName),
          birthDate: Value(model.birthDate),
          cpf: Value(model.cpf),
          nationalHealthCardNumber: Value(model.nationalHealthCardNumber),
          preNatalPlace: Value(model.preNatalPlace),
          profissionalName: Value(model.profissionalName),
          prenatalPlaceContact: Value(model.prenatalPlaceContact),
        ),
      );

      final pregnant = await (db.select(db.pregnant)
            ..where((p) => p.id.equals(1)))
          .getSingle();
      return Right(pregnant);
    } catch (e) {
      if (e.toString().contains('No element')) {
        return savePregnant(model);
      }
      return Left(RepositoryException());
    }
  }
}
