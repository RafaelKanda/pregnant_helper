import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class CurrentGestationRepository {
  Future<Either<RepositoryException, CurrentPregnancyData>> getGestation();

  Future<Either<RepositoryException, CurrentPregnancyData>> saveGestation(
    CurrentPregnancyData current,
  );

  Future<Either<RepositoryException, CurrentPregnancyData>> updateGestation(
    CurrentPregnancyData current,
  );
}
