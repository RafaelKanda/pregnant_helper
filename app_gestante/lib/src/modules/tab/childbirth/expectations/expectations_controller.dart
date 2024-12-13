// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/model/birth_plan/expectations_model.dart';
import 'package:app_gestante/src/repositories/expectations/expectations_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class ExpectationsController with MessageStateMixin {
  final ExpectationsRepository _repository;

  ExpectationsController({
    required ExpectationsRepository repository,
  }) : _repository = repository;

  final _saved = signal<bool>(false);
  bool get saved => _saved();

  Expectation? _expectations;
  Expectation? get expectation => _expectations;

  Future<void> initialize() async {
    final result = await _repository.getExpectations();

    switch (result) {
      case Left():
        showError('Erro ao pegar dados das expectativas');
      case Right(value: final expectations):
        _expectations = expectations;
    }

    _expectations ??= const Expectation(
      id: 0,
      companion: Alternatives.no,
      shaveIntimateHair: Alternatives.no,
      bowelWashOrSuppository: Alternatives.no,
      lowLightEnvironment: Alternatives.no,
      listenToMusic: Alternatives.no,
      drinkLiquids: Alternatives.no,
      recordPhotosOrVideos: Alternatives.no,
    );
    log('teste');
  }

  Future<void> saveExpectations(Expectation expectations) async {
    final result = await _repository.updateExpectations(expectations);

    switch (result) {
      case Left():
        showError('Erro ao salvar dados');
      case Right(value: final updated):
        showSuccess('Dados salvos com sucesso');
        _expectations = updated;
        _saved.value = true;
    }
  }
}
