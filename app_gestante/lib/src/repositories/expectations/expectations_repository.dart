import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class ExpectationsRepository {
  Future<Either<RepositoryException, Expectation>> getExpectations();

  Future<Either<RepositoryException, Expectation>> saveExpectations(
    Expectation expectations,
  );

  Future<Either<RepositoryException, Expectation>> updateExpectations(
    Expectation expectations,
  );
}
