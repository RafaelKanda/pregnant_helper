// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/repositories/appointments/appointments_repository.dart';
import 'package:app_gestante/src/repositories/exams/exams_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class AppointmentsExamsController with MessageStateMixin {
  final AppointmentsRepository _appointmentsRepository;
  final ExamsRepository _examsRepository;

  AppointmentsExamsController({
    required AppointmentsRepository appointmentsRepository,
    required ExamsRepository examsRepository,
  })  : _appointmentsRepository = appointmentsRepository,
        _examsRepository = examsRepository;

  final _updated = signal<bool>(false);
  bool get updated => _updated();
  void resetUpdated() => _updated.value = false;

  final List<Appointment> _appointments = [];
  List<Appointment> get appointments => _appointments;

  final List<Exam> _exams = [];
  List<Exam> get exams => _exams;

  Future<void> initialize() async {
    await _getAppointments();
    await _getExams();
  }

  Future<void> _getAppointments() async {
    final result = await _appointmentsRepository.getAppointments();

    switch (result) {
      case Left():
        showError('Falha ao buscar as consultas');
      case Right(value: final appointments):
        _appointments.clear();
        _appointments.addAll(appointments);
        _sortAppointmentsList();
    }
  }

  Future<void> _getExams() async {
    final result = await _examsRepository.getExams();

    switch (result) {
      case Left():
        showError('Falha ao buscar os exames');
      case Right(value: final exams):
        _exams.clear();
        _exams.addAll(exams);
        _sortExamsList();
    }
  }

  Future<void> saveAppointment(Appointment appointment) async {
    final result = await _appointmentsRepository.saveAppointments(appointment);

    switch (result) {
      case Left():
        showError('Falha ao salvar consulta');
      case Right(value: final appointments):
        _appointments.clear();
        _appointments.addAll(appointments);
        _sortAppointmentsList();
        _updated.value = true;
        showSuccess('Consulta salva');
    }
  }

  Future<void> saveExam(Exam exam) async {
    final result = await _examsRepository.saveExams(exam);

    switch (result) {
      case Left():
        showError('Falha ao salvar o exame');
      case Right(value: final exams):
        _exams.clear();
        _exams.addAll(exams);
        _sortExamsList();
        _updated.value = true;
        showSuccess('Exame salvo');
    }
  }

  Future<void> deleteAppointment(int id) async {
    final result = await _appointmentsRepository.deleteAppointments(id);

    switch (result) {
      case Left():
        showError('Falha ao deletar consulta');
      case Right(value: final appointments):
        _appointments.clear();
        _appointments.addAll(appointments);
        _sortAppointmentsList();
        _updated.value = true;
        showSuccess('Consulta deletada');
    }
  }

  Future<void> deleteExam(int id) async {
    final result = await _examsRepository.deleteExams(id);

    switch (result) {
      case Left():
        showError('Falha ao deletar o exame');
      case Right(value: final exams):
        _exams.clear();
        _exams.addAll(exams);
        _sortExamsList();
        _updated.value = true;
        showSuccess('Exame deletado');
    }
  }

  void _sortAppointmentsList() {
    _appointments.sort((a, b) {
      final dateA = DateTime.parse(_transformDate(a.appointmentDate));
      final dateB = DateTime.parse(_transformDate(b.appointmentDate));
      return dateA.compareTo(dateB);
    });
  }

  void _sortExamsList() {
    _exams.sort((a, b) {
      final dateA = DateTime.parse(_transformDate(a.examDate));
      final dateB = DateTime.parse(_transformDate(b.examDate));
      return dateA.compareTo(dateB);
    });
  }

  String _transformDate(String date) {
    final formatted =
        '${date.substring(6, 10)}-${date.substring(3, 5)}-${date.substring(0, 2)}';
    return formatted;
  }
}
