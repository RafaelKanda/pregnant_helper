import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/repositories/vaccines/vaccines_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class VaccinesController with MessageStateMixin {
  final VaccinesRepository _repository;

  VaccinesController({
    required VaccinesRepository repository,
  }) : _repository = repository;

  final List<VaccineData> _vaccines = [];
  List<VaccineData> get vaccines => _vaccines;

  final _updated = signal<bool>(false);
  bool get updated => _updated();
  void resetUpdated() => _updated.value = false;

  Future<void> initialize() async {
    await getVaccines();
  }

  Future<void> getVaccines() async {
    final result = await _repository.getVaccines();

    switch (result) {
      case Left():
        showError('Erro ao buscar as vacinas');
      case Right(value: final vaccines):
        if (vaccines.isEmpty) {
          _setVaccines();
        } else {
          _vaccines.clear();
          _vaccines.addAll(vaccines);
          _sortVaccines();
        }
    }
  }

  Future<void> _saveVaccine(VaccineData vaccine) async {
    final result = await _repository.saveVaccine(vaccine);

    switch (result) {
      case Left():
        showError('Falha ao salvar a vacina');
      case Right():
        log('Vacina ${vaccine.name} salva');
    }
  }

  Future<void> _setVaccines() async {
    await _saveVaccine(
      const VaccineData(id: 0, name: 'HB_1', used: false),
    );
    await _saveVaccine(
      const VaccineData(id: 1, name: 'HB_2', used: false),
    );
    await _saveVaccine(
      const VaccineData(id: 2, name: 'HB_3', used: false),
    );
    await _saveVaccine(
      const VaccineData(id: 3, name: 'dT_1', used: false),
    );
    await _saveVaccine(
      const VaccineData(id: 4, name: 'dT_2', used: false),
    );
    await _saveVaccine(
      const VaccineData(id: 5, name: 'dT_3', used: false),
    );
    await _saveVaccine(
      const VaccineData(id: 6, name: 'dTpa', used: false),
    );
    await getVaccines();
    _updated.value = true;
  }

  Future<void> updateVaccine(VaccineData vaccine) async {
    final result = await _repository.updateVaccine(vaccine);

    switch (result) {
      case Left():
        showError('Falha ao atualizar a vacina');
      case Right(value: final vaccines):
        _vaccines.clear();
        _vaccines.addAll(vaccines);
        _sortVaccines();
        _updated.value = true;
    }
  }

  void _sortVaccines() {
    _vaccines.sort((a, b) => a.id.compareTo(b.id));
  }

  final _checkHepatitis1 = signal<bool>(false);
  bool get checkHepatitis1 => _checkHepatitis1();

  final _checkHepatitis2 = signal<bool>(false);
  bool get checkHepatitis2 => _checkHepatitis2();

  final _checkHepatitis3 = signal<bool>(false);
  bool get checkHepatitis3 => _checkHepatitis3();

  final _checkDT1 = signal<bool>(false);
  bool get checkDT1 => _checkDT1();

  final _checkDT2 = signal<bool>(false);
  bool get checkDT2 => _checkDT2();

  final _checkDT3 = signal<bool>(false);
  bool get checkDT3 => _checkDT3();

  final _checkDTpa = signal<bool>(false);
  bool get checkDTpa => _checkDTpa();

  void setCheck(bool checked, int index) {
    switch (index) {
      case 0:
        _checkHepatitis1.value = checked;
        break;
      case 1:
        _checkHepatitis2.value = checked;
        break;
      case 2:
        _checkHepatitis3.value = checked;
        break;
      case 3:
        _checkDT1.value = checked;
        break;
      case 4:
        _checkDT2.value = checked;
        break;
      case 5:
        _checkDT3.value = checked;
        break;
      case 6:
        _checkDTpa.value = checked;
        break;
    }
  }
}
