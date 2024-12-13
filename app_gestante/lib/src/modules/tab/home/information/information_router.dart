import 'package:app_gestante/src/modules/tab/home/information/information_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class InformationRouter extends FlutterGetItModulePageRouter {
  const InformationRouter({super.key});

  @override
  WidgetBuilder get view => (_) => const InformationPage();
}
