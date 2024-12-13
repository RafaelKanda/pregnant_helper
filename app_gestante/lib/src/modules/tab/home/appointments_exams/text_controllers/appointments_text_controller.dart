import 'package:app_gestante/src/modules/tab/home/appointments_exams/widgets/appointments_page.dart';
import 'package:flutter/material.dart';

mixin AppointmentsTextController on State<AppointmentsPage> {
  final nameEC = TextEditingController();
  final dateEC = TextEditingController();
  final descriptionEC = TextEditingController();

  void disposeControllers() {
    nameEC.dispose();
    dateEC.dispose();
    descriptionEC.dispose();
  }

  void clearControllers() {
    nameEC.clear();
    dateEC.clear();
    descriptionEC.clear();
  }
}
