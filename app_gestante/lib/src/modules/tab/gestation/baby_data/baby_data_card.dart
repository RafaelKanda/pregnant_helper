import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/item_tile_with_list.dart';
import 'package:flutter/material.dart';

class BabyDataCard extends StatelessWidget {
  const BabyDataCard({super.key, required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              ItemTileWithList(
                title: 'Dados sobre o nascimento',
                list: list,
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
              child: const Text('Adicionar nascimento'),
            ),
          )
        ],
      ),
    );
  }
}
