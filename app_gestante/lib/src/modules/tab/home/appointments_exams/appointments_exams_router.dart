import 'package:app_gestante/src/modules/tab/home/appointments_exams/appointments_exams_controller.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/appointments_exams_page.dart';
import 'package:app_gestante/src/repositories/appointments/appointments_repository.dart';
import 'package:app_gestante/src/repositories/appointments/appointments_repository_impl.dart';
import 'package:app_gestante/src/repositories/exams/exams_repository.dart';
import 'package:app_gestante/src/repositories/exams/exams_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AppointmentsExamsRouter extends FlutterGetItModulePageRouter {
  const AppointmentsExamsRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.singleton<AppointmentsRepository>(
            (i) => AppointmentsRepositoryImpl()),
        Bind.singleton<ExamsRepository>((i) => ExamsRepositoryImpl()),
        Bind.singleton(
          (i) => AppointmentsExamsController(
            appointmentsRepository: i(),
            examsRepository: i(),
          ),
        ),
      ];

  @override
  WidgetBuilder get view => (_) => const AppointmentsExamsPage();
}
