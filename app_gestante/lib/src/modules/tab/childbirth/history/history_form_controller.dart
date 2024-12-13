import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/modules/tab/childbirth/history/history_page.dart';
import 'package:flutter/material.dart';

mixin HistoryFormController on State<HistoryPage> {
  final pregnantNumberEC = TextEditingController();
  final childbirthNumberEC = TextEditingController();
  final abortionNumberEC = TextEditingController();

  void disposeControllers() {
    pregnantNumberEC.dispose();
    childbirthNumberEC.dispose();
    abortionNumberEC.dispose();
  }

  void initializeForm(PreviousPregnancy history) {
    history.pregnancyNumber == null
        ? pregnantNumberEC.clear()
        : pregnantNumberEC.text = history.pregnancyNumber.toString();
    history.givenBirthNumber == null
        ? childbirthNumberEC.clear()
        : childbirthNumberEC.text = history.givenBirthNumber.toString();
    history.abortionsNumber == null
        ? abortionNumberEC.clear()
        : abortionNumberEC.text = history.abortionsNumber.toString();
  }
}
