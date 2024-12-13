// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
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

  String? _errorMessage;

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
    if (_errorMessage != null) {
      showError(_errorMessage!);
      _errorMessage == null;
    }
  }

  Future<void> getGestationElements() async {
    final result = await _gestationRepository.getPregnant();

    switch (result) {
      case Left():
        _errorMessage = 'Falha ao buscar dados';
      case Right(value: final gestation):
        _pregnant = gestation;
    }
  }

  Future<void> getUserElements() async {
    final result = await _profileRepository.getUser();

    switch (result) {
      case Left():
        _errorMessage = 'Falha ao buscar dados';
      case Right(value: final user):
        _user = user;
    }
  }
}
