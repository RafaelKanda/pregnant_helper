// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/repositories/current_gestation/current_gestation_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class CurrentGestationController with MessageStateMixin {
  final CurrentGestationRepository _repository;

  CurrentGestationController({
    required CurrentGestationRepository repository,
  }) : _repository = repository;

  final _saved = signal<bool>(false);
  bool get saved => _saved();

  CurrentPregnancyData? _model;
  CurrentPregnancyData? get model => _model;

  Future<void> initialize() async {
    final result = await _repository.getGestation();

    switch (result) {
      case Left():
        showError('Erro ao pegar os dados da gravidez atual');
      case Right(value: final current):
        _model = current;
    }

    _model ??= const CurrentPregnancyData(id: 0);
  }

  Future<void> saveGestation(CurrentPregnancyData current) async {
    final result = await _repository.updateGestation(current);

    switch (result) {
      case Left():
        showError('Erro ao salvar os dados');
      case Right(value: final updated):
        _model = updated;
        _saved.value = true;
    }
  }
}
