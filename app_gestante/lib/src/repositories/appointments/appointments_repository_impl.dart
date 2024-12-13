import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter_getit/flutter_getit.dart';

import './appointments_repository.dart';

class AppointmentsRepositoryImpl implements AppointmentsRepository {
  final db = Injector.get<AppDatabase>();

  @override
  Future<Either<RepositoryException, List<Appointment>>>
      getAppointments() async {
    try {
      final appointments = await db.select(db.appointments).get();
      return Right(appointments);
    } catch (e) {
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, List<Appointment>>> saveAppointments(
      Appointment appointment) async {
    try {
      log(db.appointments.actualTableName);
      await db.into(db.appointments).insert(
            AppointmentsCompanion(
              title: Value(appointment.title),
              appointmentDate: Value(appointment.appointmentDate),
              description: Value(appointment.description),
            ),
          );
      final saved = await db.select(db.appointments).get();
      return Right(saved);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }

  @override
  Future<Either<RepositoryException, List<Appointment>>> deleteAppointments(
      int id) async {
    try {
      await (db.delete(db.appointments)
            ..where((appointment) => appointment.id.equals(id)))
          .go();

      final list = await db.select(db.appointments).get();
      return Right(list);
    } catch (e) {
      log(e.toString());
      return Left(RepositoryException());
    }
  }
}
