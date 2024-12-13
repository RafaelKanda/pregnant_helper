import 'package:app_core/app_core.dart';

abstract interface class UserRepository {
  Future<Either<AuthException, String>> login(String email, String password);
}
