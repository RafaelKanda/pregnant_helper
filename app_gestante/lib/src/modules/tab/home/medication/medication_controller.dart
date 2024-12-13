// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/repositories/medication/medication_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class MedicationController with MessageStateMixin {
  final MedicationRepository _repository;

  MedicationController({
    required MedicationRepository repository,
  }) : _repository = repository;

  final List<Medication> _medications = [];
  List<Medication> get medication => _medications;

  final _updated = signal<bool>(false);
  bool get updated => _updated();
  void resetUpdated() => _updated.value = false;

  Future<void> initialize() async {
    await _getMedications();
  }

  Future<void> _getMedications() async {
    final result = await _repository.getMedications();

    switch (result) {
      case Left():
        showError('Falha ao buscar as medicações');
      case Right(value: final medications):
        _medications.clear();
        _medications.addAll(medications);
        _sortMedications();
    }
  }

  Future<void> saveMedication(Medication medication) async {
    final result = await _repository.saveMedication(medication);

    switch (result) {
      case Left():
        showError('Falha ao salvar o medicamento');
      case Right(value: final medication):
        _medications.clear();
        _medications.addAll(medication);
        _sortMedications();
        _updated.value = true;
        showSuccess('Medicamento salvo');
    }
  }

  Future<void> deleteMedication(int id) async {
    final result = await _repository.deleteMedication(id);

    switch (result) {
      case Left():
        showError('Falha ao remover o medicamento');
      case Right(value: final medication):
        _medications.clear();
        _medications.addAll(medication);
        _sortMedications();
        _updated.value = true;
        showSuccess('Medicamento deletado');
    }
  }

  void _sortMedications() {
    _medications.sort((a, b) {
      return a.name.compareTo(b.name);
    });
  }
}
