import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/services/user_login_service.dart';
import 'package:signals_flutter/signals_core.dart';

class LoginController with MessageStateMixin {
  LoginController({required UserLoginService loginService})
      : _loginService = loginService;

  final UserLoginService _loginService;

  final _obscurePassword = signal(true);
  final _logged = signal(false);

  bool get obscurePassword => _obscurePassword();
  bool get logged => _logged();

  void passwordToggle() => _obscurePassword.value = !_obscurePassword.value;

  Future<void> login(String email, String password) async {
    final loginResult = await _loginService.execute(email, password);

    switch (loginResult) {
      case Left(value: ServiceException(:final message)):
        showError(message);
      case Right(value: _):
        _logged.value = true;
      default:
        showError('Erro ao realizar login');
    }
  }

  void debug() {
    _logged.value = true;
  }

  void forgotMyPassword() {
    showInfo('Ainda não implementado');
  }

  void createAccount() {
    showInfo('Ainda não implementado');
  }
}
