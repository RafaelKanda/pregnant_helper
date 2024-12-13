import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/modules/tab/childbirth/current_gestation/current_gestation_page.dart';
import 'package:flutter/material.dart';

mixin CurrentGestationFormController on State<CurrentGestationPage> {
  final lastMenstrualPeriodEC = TextEditingController();
  final firstUltrasoundEC = TextEditingController();

  void disposeControllers() {
    lastMenstrualPeriodEC.dispose();
    firstUltrasoundEC.dispose();
  }

  void initializeForm(CurrentPregnancyData? current) {
    if (current != null) {
      lastMenstrualPeriodEC.text = current.lastMenstrualPeriod ?? '';
      firstUltrasoundEC.text = current.firstUltrasound ?? '';
    }
  }
}
