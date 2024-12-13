import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/custom_item_tile.dart';
import 'package:flutter/material.dart';

class PregnantCard extends StatelessWidget {
  const PregnantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              CustomItemTile(
                flex: 3,
                title: 'Nome',
                content: 'Maria',
              ),
              SizedBox(
                width: 10,
              ),
              CustomItemTile(
                flex: 1,
                title: 'Idade',
                content: '21 anos',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              CustomItemTile(
                flex: 1,
                title: 'IG atual',
                content: '34 semanas e 5 dias',
              ),
              SizedBox(width: 10),
              CustomItemTile(
                flex: 1,
                title: 'Data do parto',
                content: '02/12/20211',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Local que realiza o pré-natal',
                content: 'Ambulatório Geny Farias',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Nome do profissional',
                content: 'Mario Antônio',
              ),
              SizedBox(
                width: 10,
              ),
              CustomItemTile(
                flex: 1,
                title: 'Contato do local',
                content: '99999-9999',
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
              child: const Text('Editar'),
            ),
          ),
        ],
      ),
    );
  }
}
