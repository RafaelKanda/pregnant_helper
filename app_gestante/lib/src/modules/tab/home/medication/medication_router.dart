import 'package:app_gestante/src/modules/tab/home/medication/medication_controller.dart';
import 'package:app_gestante/src/modules/tab/home/medication/medication_page.dart';
import 'package:app_gestante/src/repositories/medication/medication_repository.dart';
import 'package:app_gestante/src/repositories/medication/medication_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class MedicationRouter extends FlutterGetItModulePageRouter {
  const MedicationRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<MedicationRepository>(
          (i) => MedicationRepositoryImpl(),
        ),
        Bind.lazySingleton(
          (i) => MedicationController(
            repository: i(),
          ),
        ),
      ];

  @override
  WidgetBuilder get view => (_) => const MedicationPage();
}
