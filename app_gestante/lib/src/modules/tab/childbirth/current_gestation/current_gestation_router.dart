import 'package:app_gestante/src/modules/tab/childbirth/current_gestation/current_gestation_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/current_gestation/current_gestation_page.dart';
import 'package:app_gestante/src/repositories/current_gestation/current_gestation_repository.dart';
import 'package:app_gestante/src/repositories/current_gestation/current_gestation_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class CurrentGestationRouter extends FlutterGetItModulePageRouter {
  const CurrentGestationRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<CurrentGestationRepository>(
            (i) => CurrentGestationRepositoryImpl()),
        Bind.lazySingleton((i) => CurrentGestationController(repository: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const CurrentGestationPage();
}
