// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/model/gestation/pregnant_model.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository.dart';
import 'package:signals_flutter/signals_core.dart';

class IdentificationController with MessageStateMixin {
  final GestationRepository _repository;

  IdentificationController({
    required GestationRepository repository,
  }) : _repository = repository;

  final _saved = signal<bool>(false);
  bool get saved => _saved();

  PregnantModel? _model;
  PregnantModel? get model => _model;

  Future<void> initialize() async {
    final result = await _repository.getPregnant();

    switch (result) {
      case Left():
        showError('Erro ao pegar dados da gestante');
      case Right(value: final pregnant):
        _model = PregnantModel.fromData(pregnant);
    }

    _model ??= PregnantModel(
      name: '',
      socialName: '',
      birthDate: '',
      cpf: '',
      nationalHealthCardNumber: '',
      preNatalPlace: '',
      profissionalName: '',
      prenatalPlaceContact: '',
    );
  }

  Future<void> saveIdentification(PregnantModel model) async {
    final result = await _repository.updatePregnant(model);

    switch (result) {
      case Left():
        showError('Erro ao salvar os dados');
      case Right(value: final pregnant):
        showSuccess('Dados salvos com sucesso');
        _model = PregnantModel.fromData(pregnant);
        _saved.value = true;
    }
  }
}
