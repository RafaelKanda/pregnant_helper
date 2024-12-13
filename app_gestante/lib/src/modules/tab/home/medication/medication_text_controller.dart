import 'package:app_gestante/src/modules/tab/home/medication/medication_page.dart';
import 'package:flutter/material.dart';

mixin MedicationTextController on State<MedicationPage> {
  final nameEC = TextEditingController();
  final doseEC = TextEditingController();
  final medicationTimeEC = TextEditingController();

  void disposeControllers() {
    nameEC.dispose();
    doseEC.dispose();
    medicationTimeEC.dispose();
  }

  void clearControllers() {
    nameEC.clear();
    doseEC.clear();
    medicationTimeEC.clear();
  }
}
