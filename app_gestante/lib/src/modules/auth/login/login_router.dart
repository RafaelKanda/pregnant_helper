import 'package:app_gestante/src/modules/auth/login/login_controller.dart';
import 'package:app_gestante/src/modules/auth/login/login_page.dart';
import 'package:app_gestante/src/services/user_login_service.dart';
import 'package:app_gestante/src/services/user_login_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginRouter extends FlutterGetItModulePageRouter {
  const LoginRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<UserLoginService>(
            (i) => UserLoginServiceImpl(userRepository: i())),
        Bind.lazySingleton((i) => LoginController(loginService: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const LoginPage();
}
