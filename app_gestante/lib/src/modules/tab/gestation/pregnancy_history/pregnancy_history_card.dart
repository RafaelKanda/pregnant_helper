import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/item_tile_with_list.dart';
import 'package:flutter/material.dart';

class PregnancyHistoryCard extends StatelessWidget {
  const PregnancyHistoryCard({super.key, required this.list});

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
                title: 'Histórico de gestações',
                list: list,
              ),
            ],
          )
        ],
      ),
    );
  }
}
