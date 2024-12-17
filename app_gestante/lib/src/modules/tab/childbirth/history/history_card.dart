import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/custom_item_tile.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.history, required this.edited});

  final PreviousPregnancy? history;
  final VoidCallback edited;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        children: [
          const Text(
            'Minha história',
            style: AppTheme.titleSmallStyle,
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Gestações',
                content: getData(history?.pregnancyNumber.toString()),
              ),
              const SizedBox(width: 10),
              CustomItemTile(
                flex: 1,
                title: 'Partos',
                content: getData(history?.givenBirthNumber.toString()),
              ),
              const SizedBox(width: 10),
              CustomItemTile(
                flex: 1,
                title: 'Abortos',
                content: getData(history?.abortionsNumber.toString()),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                flex: 1,
                title: 'História das gestações anteriores',
                content: '',
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.pushNamed(context, '/update-childbirth/history')
                //     .then((_) {
                //   // Navigator.pushNamed(context, '/resume/');
                // });
              },
              child: const Text('Editar'),
            ),
          ),
        ],
      ),
    );
  }

  String getData(String? raw) {
    if (raw == null || raw.contains('null')) {
      return 'Sem dados';
    } else {
      return raw;
    }
  }
}
