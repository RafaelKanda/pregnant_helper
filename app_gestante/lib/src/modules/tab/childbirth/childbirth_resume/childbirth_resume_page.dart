import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/childbirth/birth_expectations/birth_expectations_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/birth_moment/birth_moment_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/childbirth_resume/childbirth_resume_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/current_gestation/current_gestation_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/desires_expectations/desires_expectations_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/history/history_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';

class ChildbirthResumePage extends StatefulWidget {
  const ChildbirthResumePage({super.key});

  @override
  State<ChildbirthResumePage> createState() => _ChildbirthResumePageState();
}

class _ChildbirthResumePageState extends State<ChildbirthResumePage> {
  final _controller = Injector.get<ChildbirthResumeController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        effect(() async {
          if (_controller.updated == true) {
            await _controller.initialize().then(
                  (value) => _controller.setUpdated(false),
                );
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      title: const Text(
        'Plano de parto detalhado',
        style: AppTheme.titleSmallStyle,
      ),
      centerTitle: true,
    );
  }

  Widget get _buildBody {
    return FutureBuilder(
      future: _controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Watch(
            (_) => Visibility(
              visible: !_controller.updated,
              replacement: const Center(child: CircularProgressIndicator()),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      IdentificationCard(
                        pregnantData: _controller.pregnantData,
                        edited: () => _controller.setUpdated(true),
                      ),
                      const SizedBox(height: 10),
                      HistoryCard(
                        history: _controller.historyData,
                        edited: () => _controller.setUpdated(true),
                      ),
                      const SizedBox(height: 10),
                      CurrentGestationCard(
                          current: _controller.currentPregnancyData),
                      const SizedBox(height: 10),
                      ExpectationsCard(
                          expectations: _controller.expectationsData),
                      const SizedBox(height: 10),
                      const BirthMomentCard(),
                      const SizedBox(height: 10),
                      const BirthExpectationsCard(),
                      const SizedBox(height: 10),
                      const DesiresExpectationsCard(),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
