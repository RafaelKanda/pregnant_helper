import 'package:app_gestante/src/modules/tab/home/home_controller.dart';
import 'package:app_gestante/src/modules/tab/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class HomeRouter extends FlutterGetItModulePageRouter {
  const HomeRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => HomeController()),
      ];

  @override
  WidgetBuilder get view => (_) => const HomePage();
}
