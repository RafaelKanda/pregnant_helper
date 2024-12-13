import 'package:app_gestante/src/modules/tab/childbirth/childbirth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ChildbirthRouter extends FlutterGetItModulePageRouter {
  const ChildbirthRouter({super.key});

  @override
  WidgetBuilder get view => (_) => const ChildbirthPage();
}
