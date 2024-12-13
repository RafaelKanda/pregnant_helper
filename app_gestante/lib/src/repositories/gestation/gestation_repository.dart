import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/model/gestation/pregnant_model.dart';

abstract interface class GestationRepository {
  Future<Either<RepositoryException, PregnantData>> getPregnant();

  Future<Either<RepositoryException, PregnantData>> savePregnant(
      PregnantModel model);

  Future<Either<RepositoryException, PregnantData>> updatePregnant(
      PregnantModel model);
}
