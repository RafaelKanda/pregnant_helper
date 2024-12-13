import 'package:app_gestante/src/modules/tab/home/appointments_exams/widgets/exams_page.dart';
import 'package:flutter/material.dart';

mixin ExamsTextController on State<ExamsPage> {
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
