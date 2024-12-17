import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class IdentificationRouter extends FlutterGetItModulePageRouter {
  const IdentificationRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.singleton((i) => IdentificationController(repository: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const IdentificationPage();
}
