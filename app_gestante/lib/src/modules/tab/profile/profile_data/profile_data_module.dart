import 'package:app_gestante/src/modules/tab/profile/profile_data/profile_data_controller.dart';
import 'package:app_gestante/src/modules/tab/profile/profile_data/profile_data_page.dart';
import 'package:app_gestante/src/repositories/profile/profile_repository.dart';
import 'package:app_gestante/src/repositories/profile/profile_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ProfileDataModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [
        Bind.singleton<ProfileRepository>((i) => ProfileRepositoryImpl()),
        Bind.singleton(
          (i) => ProfileDataController(
            gestationRepository: i(),
            profileRepository: i(),
          ),
        ),
      ];

  @override
  String get moduleRouteName => '/profile-data';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => const ProfileDataPage(),
      };
}
