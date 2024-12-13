import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/custom_item_tile.dart';
import 'package:flutter/material.dart';

class MaternityCard extends StatelessWidget {
  const MaternityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Maternidade de referência',
                content: 'Hospital e Maternidade Luíza',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Alterar'),
            ),
          ),
        ],
      ),
    );
  }
}
