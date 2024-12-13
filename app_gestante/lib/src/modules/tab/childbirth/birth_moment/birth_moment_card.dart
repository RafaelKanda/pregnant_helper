import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/custom_item_tile.dart';
import 'package:flutter/material.dart';

class BirthMomentCard extends StatelessWidget {
  const BirthMomentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        children: [
          const Text(
            'Expectativas para o momento do parto',
            style: AppTheme.titleSmallStyle,
          ),
          const SizedBox(height: 16),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                  flex: 1, title: 'Via de parto', content: 'Cesárea'),
              SizedBox(width: 10),
              CustomItemTile(
                  flex: 1, title: 'Corte vaginal', content: 'Não definido'),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                  flex: 1, title: 'Anestesia', content: 'Não definido'),
              SizedBox(width: 10),
              CustomItemTile(
                  flex: 1, title: 'Posição', content: 'Não definido'),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Medidas para aliviar a dor',
                content: '',
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Editar'),
            ),
          ),
        ],
      ),
    );
  }
}
