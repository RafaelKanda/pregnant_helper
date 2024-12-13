import 'package:app_gestante/src/modules/tab/childbirth/history/history_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/history/history_page.dart';
import 'package:app_gestante/src/repositories/history/history_repository.dart';
import 'package:app_gestante/src/repositories/history/history_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class HistoryRouter extends FlutterGetItModulePageRouter {
  const HistoryRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<HistoryRepository>((i) => HistoryRepositoryImpl()),
        Bind.lazySingleton((i) => HistoryController(repository: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const HistoryPage();
}
