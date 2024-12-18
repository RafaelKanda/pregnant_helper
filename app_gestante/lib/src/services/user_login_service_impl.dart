import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/repositories/user/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './user_login_service.dart';

class UserLoginServiceImpl implements UserLoginService {
  final UserRepository userRepository;

  UserLoginServiceImpl({required this.userRepository});

  @override
  Future<Either<ServiceException, Unit>> execute(
    String email,
    String password,
  ) async {
    final loginResult = await userRepository.login(email, password);

    switch (loginResult) {
      case Left(value: AuthError()):
        return Left(ServiceException(message: 'Erro ao realizar login'));
      case Left(value: AuthUnauthorizedException()):
        return Left(ServiceException(message: 'Login ou senha inválidos'));
      case Right(value: final accessToken):
        final sp = await SharedPreferences.getInstance();
        sp.setString(LocalStorageConstants.accessToken, accessToken);
        return Right(unit);
      default:
        return Left(ServiceException(message: 'Erro ao realizar login'));
    }
  }
}
