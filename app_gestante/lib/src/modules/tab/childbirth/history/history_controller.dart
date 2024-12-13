// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/repositories/history/history_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class HistoryController with MessageStateMixin {
  final HistoryRepository _repository;

  HistoryController({
    required HistoryRepository repository,
  }) : _repository = repository;

  final _saved = signal<bool>(false);
  bool get saved => _saved();

  PreviousPregnancy? _model;
  PreviousPregnancy? get model => _model;

  Future<void> initialize() async {
    final result = await _repository.getHistory();

    switch (result) {
      case Left():
        showError('Erro ao pegar dados de gravidez anteriores');
      case Right(value: final history):
        _model = history;
    }

    _model ??= const PreviousPregnancy(id: 0);
  }

  Future<void> saveHistory(PreviousPregnancy history) async {
    final result = await _repository.updateHistory(history);

    switch (result) {
      case Left():
        showError('Erro ao salvar os dados');
      case Right(value: final updated):
        showSuccess('Dados salvos com sucesso');
        _model = updated;
        _saved.value = true;
    }
  }
}
