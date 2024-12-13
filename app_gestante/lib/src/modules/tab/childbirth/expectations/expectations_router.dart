import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_page.dart';
import 'package:app_gestante/src/repositories/expectations/expectations_repository.dart';
import 'package:app_gestante/src/repositories/expectations/expectations_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ExpectationsRouter extends FlutterGetItModulePageRouter {
  const ExpectationsRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<ExpectationsRepository>(
            (i) => ExpectationsRepositoryImpl()),
        Bind.lazySingleton((i) => ExpectationsController(repository: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const ExpectationsPage();
}
