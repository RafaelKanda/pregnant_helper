import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class BirthMomentRepository {
  Future<Either<RepositoryException, BirthMomentData>> getBirthMoment();

  Future<Either<RepositoryException, BirthMomentData>> saveBirthMoment(
    BirthMomentData birthMoment,
  );

  Future<Either<RepositoryException, BirthMomentData>> updateBirthMoment(
    BirthMomentData birthMoment,
  );
}
