import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';

abstract interface class ProfileRepository {
  Future<Either<RepositoryException, UserData>> getUser();

  Future<Either<RepositoryException, UserData>> saveUser(
    UserData user,
  );

  Future<Either<RepositoryException, UserData>> updateUser(
    UserData user,
  );
}
