import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, UserData>> getUser() async {
    try {
      final user =
          await (db.select(db.user)..where((p) => p.id.equals(1))).getSingle();
      return Right(user);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, UserData>> saveUser(UserData user) async {
    try {
      await db.into(db.user).insert(
            UserCompanion(
              id: const Value(1),
              education: Value(user.education),
              email: Value(user.email),
              familyIncome: Value(user.familyIncome),
            ),
          );
      final saved =
          await (db.select(db.user)..where((p) => p.id.equals(1))).getSingle();
      return Right(saved);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, UserData>> updateUser(
      UserData user) async {
    try {
      await (db.update(db.user)..where((p) => p.id.equals(1)))
          .write(UserCompanion(
        education: Value(user.education),
        email: Value(user.email),
        familyIncome: Value(user.familyIncome),
      ));
      final updated =
          await (db.select(db.user)..where((p) => p.id.equals(1))).getSingle();
      return Right(updated);
    } catch (e) {
      if (e.toString().contains('No element')) {
        return saveUser(user);
      }
      return Left(RepositoryException());
    }
  }
}
