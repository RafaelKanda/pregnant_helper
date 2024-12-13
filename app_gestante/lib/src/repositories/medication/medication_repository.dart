import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class MedicationRepository {
  Future<Either<RepositoryException, List<Medication>>> getMedications();

  Future<Either<RepositoryException, List<Medication>>> saveMedication(
    Medication medication,
  );

  Future<Either<RepositoryException, List<Medication>>> deleteMedication(
    int id,
  );
}
