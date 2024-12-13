import 'package:app_gestante/src/modules/tab/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ProfileRouter extends FlutterGetItModulePageRouter {
  const ProfileRouter({super.key});

  @override
  WidgetBuilder get view => (_) => const ProfilePage();
}
