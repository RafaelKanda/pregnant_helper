import 'package:app_gestante/src/modules/tab/gestation/gestation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class GestationRouter extends FlutterGetItModulePageRouter {
  const GestationRouter({super.key});

  @override
  WidgetBuilder get view => (_) => const GestationPage();
}
