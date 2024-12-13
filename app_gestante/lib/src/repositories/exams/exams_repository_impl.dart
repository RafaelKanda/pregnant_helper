import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './exams_repository.dart';

class ExamsRepositoryImpl implements ExamsRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, List<Exam>>> getExams() async {
    try {
      final exams = await db.select(db.exams).get();
      return Right(exams);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, List<Exam>>> saveExams(Exam exam) async {
    try {
      log(db.exams.actualTableName);
      await db.into(db.exams).insert(
            ExamsCompanion(
              title: Value(exam.title),
              examDate: Value(exam.examDate),
              description: Value(exam.description),
            ),
          );
      final saved = await db.select(db.exams).get();
      return Right(saved);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, List<Exam>>> deleteExams(int id) async {
    try {
      await (db.delete(db.exams)..where((exam) => exam.id.equals(id))).go();

      final list = await db.select(db.exams).get();
      return Right(list);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }
}
