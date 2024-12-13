import 'package:app_gestante/src/modules/tab/home/vaccines/vaccines_controller.dart';
import 'package:app_gestante/src/modules/tab/home/vaccines/vaccines_page.dart';
import 'package:app_gestante/src/repositories/vaccines/vaccines_repository.dart';
import 'package:app_gestante/src/repositories/vaccines/vaccines_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class VaccinesRouter extends FlutterGetItModulePageRouter {
  const VaccinesRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<VaccinesRepository>(
          (i) => VaccinesRepositoryImpl(),
        ),
        Bind.lazySingleton(
          (i) => VaccinesController(
            repository: i(),
          ),
        ),
      ];

  @override
  WidgetBuilder get view => (_) => const VaccinesPage();
}
