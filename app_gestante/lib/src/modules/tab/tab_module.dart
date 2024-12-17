import 'package:app_gestante/src/modules/tab/childbirth/childbirth_router.dart';
import 'package:app_gestante/src/modules/tab/custom_tab_controller.dart';
import 'package:app_gestante/src/modules/tab/gestation/gestation_router.dart';
import 'package:app_gestante/src/modules/tab/home/home_router.dart';
import 'package:app_gestante/src/modules/tab/profile/profile_router.dart';
import 'package:app_gestante/src/modules/tab/tab_page.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository.dart';
import 'package:app_gestante/src/repositories/gestation/gestation_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class TabModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [
        Bind.singleton<GestationRepository>((i) => GestationRepositoryImpl()),
        Bind.singleton(
          (i) => CustomTabController(gestationRepository: i()),
        ),
      ];

  @override
  String get moduleRouteName => '/tab';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => const TabPage(),
        '/homes': (context) => const HomeRouter(),
        '/more': (context) => const ChildbirthRouter(),
        '/gestation': (context) => const GestationRouter(),
        '/profile': (context) => const ProfileRouter(),
      };
}
