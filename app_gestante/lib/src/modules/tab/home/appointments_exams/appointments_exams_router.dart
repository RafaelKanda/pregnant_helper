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
        Bind.lazySingleton<AppointmentsRepository>(
            (i) => AppointmentsRepositoryImpl()),
        Bind.lazySingleton<ExamsRepository>((i) => ExamsRepositoryImpl()),
        Bind.lazySingleton(
          (i) => AppointmentsExamsController(
            appointmentsRepository: i(),
            examsRepository: i(),
          ),
        ),
      ];

  @override
  WidgetBuilder get view => (_) => const AppointmentsExamsPage();
}
