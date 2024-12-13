import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class AppointmentsRepository {
  Future<Either<RepositoryException, List<Appointment>>> getAppointments();

  Future<Either<RepositoryException, List<Appointment>>> saveAppointments(
    Appointment appointment,
  );

  Future<Either<RepositoryException, List<Appointment>>> deleteAppointments(
    int id,
  );
}
