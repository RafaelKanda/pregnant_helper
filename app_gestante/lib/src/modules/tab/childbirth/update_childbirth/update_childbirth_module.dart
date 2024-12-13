import 'package:app_gestante/src/modules/tab/childbirth/current_gestation/current_gestation_router.dart';
import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_router.dart';
import 'package:app_gestante/src/modules/tab/childbirth/history/history_router.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class UpdateChildbirthModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/update-childbirth';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/identification': (context) => const IdentificationRouter(),
        '/history': (context) => const HistoryRouter(),
        '/current': (context) => const CurrentGestationRouter(),
        '/expectations': (context) => const ExpectationsRouter(),
      };
}
