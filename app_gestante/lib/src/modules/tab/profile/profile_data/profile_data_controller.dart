// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/model/gestation/pregnant_model.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository.dart';
import 'package:app_gestante/src/repositories/profile/profile_repository.dart';
import 'package:signals_flutter/signals_flutter.dart';

class ProfileDataController with MessageStateMixin {
  final GestationRepository _gestationRepository;
  final ProfileRepository _profileRepository;

  PregnantData? _pregnant;
  PregnantData? get pregnant => _pregnant;

  UserData? _user;
  UserData? get user => _user;

  ProfileDataController({
    required GestationRepository gestationRepository,
    required ProfileRepository profileRepository,
  })  : _gestationRepository = gestationRepository,
        _profileRepository = profileRepository;

  final _formEnabled = signal<bool>(false);
  bool get formEnabled => _formEnabled();

  void setFormEnabled(bool enabled) {
    _formEnabled.value = enabled;
  }

  Future<void> initialize() async {
    await getGestationElements();
    await getUserElements();
  }

  Future<void> getGestationElements() async {
    final result = await _gestationRepository.getPregnant();

    switch (result) {
      case Left():
        log('Falha ao buscar dados');
      case Right(value: final gestation):
        _pregnant = gestation;
    }
  }

  Future<void> getUserElements() async {
    final result = await _profileRepository.getUser();

    switch (result) {
      case Left():
        log('Falha ao buscar dados');
      case Right(value: final user):
        _user = user;
    }
  }

  Future<bool> saveProfile(PregnantModel pregnant, UserData user) async {
    List<bool> hasError = [false, false];
    hasError[0] = await _saveGestation(pregnant);
    hasError[1] = await _saveUser(user);
    if (hasError[0] || hasError[1]) {
      showError('Falha ao salvar os dados');
      return false;
    } else {
      showSuccess('Dados salvos');
      return true;
    }
  }

  Future<bool> _saveGestation(PregnantModel pregnant) async {
    final result = await _gestationRepository.updatePregnant(pregnant);

    switch (result) {
      case Left():
        return true;
      case Right():
        return false;
    }
  }

  Future<bool> _saveUser(UserData user) async {
    final result = await _profileRepository.updateUser(user);

    switch (result) {
      case Left():
        return true;
      case Right():
        return false;
    }
  }
}
