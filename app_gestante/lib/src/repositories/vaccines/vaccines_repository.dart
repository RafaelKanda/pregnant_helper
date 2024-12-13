import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class VaccinesRepository {
  Future<Either<RepositoryException, List<VaccineData>>> getVaccines();

  Future<Either<RepositoryException, List<VaccineData>>> saveVaccine(
    VaccineData vaccine,
  );

  Future<Either<RepositoryException, List<VaccineData>>> updateVaccine(
    VaccineData vaccine,
  );
}
