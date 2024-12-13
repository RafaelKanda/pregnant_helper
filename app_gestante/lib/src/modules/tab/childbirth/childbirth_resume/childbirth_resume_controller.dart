import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/model/birth_plan/expectations_model.dart';
import 'package:app_gestante/src/repositories/current_gestation/current_gestation_repository.dart';
import 'package:app_gestante/src/repositories/expectations/expectations_repository.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository.dart';
import 'package:app_gestante/src/repositories/history/history_repository.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ChildbirthResumeController {
  late final PregnantData? pregnantData;
  late final PreviousPregnancy? historyData;
  late final CurrentPregnancyData? currentPregnancyData;
  late final Expectation? expectationsData;
  bool initialized = false;

  Future<void> initialize() async {
    if (!initialized) {
      await getPregnant();
      await getHistory();
      await getCurrentGestation();
      await getExpectations();
    }
  }

  Future<void> getPregnant() async {
    final result = await Injector.get<GestationRepository>().getPregnant();

    switch (result) {
      case Left():
        log('Error');
        pregnantData =
            const PregnantData(id: 0, name: '', birthDate: '', cpf: '');
      case Right(value: final pregnant):
        pregnantData = pregnant;
    }
  }

  Future<void> getHistory() async {
    final result = await Injector.get<HistoryRepository>().getHistory();

    switch (result) {
      case Left():
        log('Error');
        historyData = const PreviousPregnancy(
          id: 0,
          abortionsNumber: null,
          givenBirthNumber: null,
          pregnancyNumber: null,
        );
      case Right(value: final history):
        historyData = history;
    }
  }

  Future<void> getCurrentGestation() async {
    final result =
        await Injector.get<CurrentGestationRepository>().getGestation();

    switch (result) {
      case Left():
        log('Error');
        currentPregnancyData = const CurrentPregnancyData(id: 0);
      case Right(value: final current):
        currentPregnancyData = current;
    }
  }

  Future<void> getExpectations() async {
    final result =
        await Injector.get<ExpectationsRepository>().getExpectations();

    switch (result) {
      case Left():
        log('Error');
        expectationsData = Expectation(
          id: 0,
          companion: Alternatives.values[1],
          shaveIntimateHair: Alternatives.values[1],
          bowelWashOrSuppository: Alternatives.values[1],
          lowLightEnvironment: Alternatives.values[1],
          listenToMusic: Alternatives.values[1],
          drinkLiquids: Alternatives.values[1],
          recordPhotosOrVideos: Alternatives.values[1],
        );
      case Right(value: final expectations):
        expectationsData = expectations;
    }
  }
}
