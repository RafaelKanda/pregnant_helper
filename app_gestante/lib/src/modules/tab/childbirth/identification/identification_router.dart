import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_page.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class IdentificationRouter extends FlutterGetItModulePageRouter {
  const IdentificationRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<GestationRepository>(
            (i) => GestationRepositoryImpl()),
        Bind.lazySingleton((i) => IdentificationController(repository: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const IdentificationPage();
}
