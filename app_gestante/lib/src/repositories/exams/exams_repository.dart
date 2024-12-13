import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class ExamsRepository {
  Future<Either<RepositoryException, List<Exam>>> getExams();

  Future<Either<RepositoryException, List<Exam>>> saveExams(
    Exam exam,
  );

  Future<Either<RepositoryException, List<Exam>>> deleteExams(
    int id,
  );
}
