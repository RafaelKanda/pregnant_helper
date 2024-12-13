import 'package:app_gestante/src/modules/tab/home/appointments_exams/appointments_exams_router.dart';
import 'package:app_gestante/src/modules/tab/home/information/information_router.dart';
import 'package:app_gestante/src/modules/tab/home/medication/medication_router.dart';
import 'package:app_gestante/src/modules/tab/home/vaccines/vaccines_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class HomeModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/home';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/appointments-exams': (context) => const AppointmentsExamsRouter(),
        '/vaccines': (context) => const VaccinesRouter(),
        '/information': (context) => const InformationRouter(),
        '/medication': (context) => const MedicationRouter(),
      };
}
