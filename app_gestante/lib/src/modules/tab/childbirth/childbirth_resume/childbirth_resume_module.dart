import 'package:app_gestante/src/modules/tab/childbirth/childbirth_resume/childbirth_resume_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/childbirth_resume/childbirth_resume_page2.dart';
import 'package:app_gestante/src/repositories/current_gestation/current_gestation_repository.dart';
import 'package:app_gestante/src/repositories/current_gestation/current_gestation_repository_impl.dart';
import 'package:app_gestante/src/repositories/expectations/expectations_repository.dart';
import 'package:app_gestante/src/repositories/expectations/expectations_repository_impl.dart';
import 'package:app_gestante/src/repositories/history/history_repository.dart';
import 'package:app_gestante/src/repositories/history/history_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ChildbirthResumeModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/resume';

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<HistoryRepository>((i) => HistoryRepositoryImpl()),
        Bind.lazySingleton<CurrentGestationRepository>(
            (i) => CurrentGestationRepositoryImpl()),
        Bind.lazySingleton<ExpectationsRepository>(
            (i) => ExpectationsRepositoryImpl()),
        Bind.lazySingleton((i) => ChildbirthResumeController()),
      ];

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => const ChildbirthResumePage(),
      };
}
