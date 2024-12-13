import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/gestation/baby_data/baby_data_card.dart';
import 'package:app_gestante/src/modules/tab/gestation/maternity/maternity_card.dart';
import 'package:app_gestante/src/modules/tab/gestation/pregnancy_history/pregnancy_history_card.dart';
import 'package:app_gestante/src/modules/tab/gestation/pregnant/pregnant_card.dart';
import 'package:app_gestante/src/modules/tab/gestation/prenatal_appointment/prenatal_appointment_card.dart';
import 'package:flutter/material.dart';

class GestationPage extends StatefulWidget {
  const GestationPage({super.key});

  @override
  State<GestationPage> createState() => _GestationPageState();
}

class _GestationPageState extends State<GestationPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return _content;
  }

  Widget get _content => Container(
        constraints: BoxConstraints(
          maxHeight: context.screenHeight - 72,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: context.screenWidth,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Gestação',
                  style: AppTheme.titleStyle,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: context.screenWidth,
                padding: const EdgeInsets.all(20),
                color: AppTheme.secondaryColor,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      PregnantCard(),
                      SizedBox(
                        height: 16,
                      ),
                      MaternityCard(),
                      SizedBox(
                        height: 16,
                      ),
                      PrenatalAppointmentCard(
                        list: [
                          '20/12/2021',
                          '22/12/2021',
                          '23/12/2021',
                          '24/12/2021',
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      BabyDataCard(
                        list: [
                          'Luan Henrique Cardoso',
                          'Fernanda Silva',
                          'Laura Santos'
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      PregnancyHistoryCard(
                        list: ['01/05/2019'],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
