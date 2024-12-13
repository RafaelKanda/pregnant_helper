import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class HistoryRepository {
  Future<Either<RepositoryException, PreviousPregnancy>> getHistory();

  Future<Either<RepositoryException, PreviousPregnancy>> saveHistory(
    PreviousPregnancy history,
  );

  Future<Either<RepositoryException, PreviousPregnancy>> updateHistory(
    PreviousPregnancy history,
  );
}
