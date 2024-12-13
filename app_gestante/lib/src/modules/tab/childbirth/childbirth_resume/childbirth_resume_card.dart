import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/custom_item_tile.dart';
import 'package:flutter/material.dart';

class ChildbirthResumeCard extends StatelessWidget {
  const ChildbirthResumeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        children: [
          const Text(
            'Resumo do plano de parto',
            style: AppTheme.titleSmallStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Via de parto',
                content: 'Cesárea',
              ),
              SizedBox(
                width: 10,
              ),
              CustomItemTile(
                flex: 1,
                title: 'Posição',
                content: 'Deitada',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Anestesia',
                content: 'Sim',
              ),
              SizedBox(
                width: 10,
              ),
              CustomItemTile(
                flex: 1,
                title: 'Acompanhante',
                content: 'Não definido',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomItemTile(
                flex: 1,
                title: 'Corte cordão',
                content: 'Profissional',
              ),
              SizedBox(
                width: 10,
              ),
              CustomItemTile(
                flex: 1,
                title: '1° banho',
                content: 'Eu',
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/resume');
                    },
                    child: const Text('Visualizar'),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Compartilhar'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
