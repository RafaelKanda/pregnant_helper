import 'package:app_core/app_core.dart';
import 'package:signals_flutter/signals_core.dart';

class HomeController with MessageStateMixin {
  final test = signal<int>(0);

  void showTest() {
    showInfo('Teste: ${test.value}');
  }

  void addTest() {
    test.value++;
  }
}
