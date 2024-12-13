import 'dart:async';
import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/binding/application_binding.dart';
import 'package:app_gestante/src/modules/auth/auth_module.dart';
import 'package:app_gestante/src/modules/tab/childbirth/childbirth_resume/childbirth_resume_module.dart';
import 'package:app_gestante/src/modules/tab/childbirth/update_childbirth/update_childbirth_module.dart';
import 'package:app_gestante/src/modules/tab/home/home_module.dart';
import 'package:app_gestante/src/modules/tab/profile/profile_data/profile_data_module.dart';
import 'package:app_gestante/src/modules/tab/tab_module.dart';
import 'package:app_gestante/src/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

void main() {
  runZonedGuarded(
      () => runApp(
            const AppGestante(),
          ), (error, stack) {
    log('Erro nao tratado', error: error, stackTrace: stack);
  });
}

class AppGestante extends StatelessWidget {
  const AppGestante({super.key});

  @override
  Widget build(BuildContext context) {
    return CoreConfig(
      title: 'App Gestante',
      binding: ApplicationBinding(),
      pagesBuilders: [
        FlutterGetItPageBuilder(page: (_) => const SplashPage(), path: '/'),
      ],
      modules: [
        AuthModule(),
        TabModule(),
        ChildbirthResumeModule(),
        UpdateChildbirthModule(),
        ProfileDataModule(),
        HomeModule(),
      ],
    );
  }
}
