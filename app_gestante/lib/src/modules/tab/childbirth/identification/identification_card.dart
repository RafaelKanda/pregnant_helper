import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/custom_item_tile.dart';
import 'package:flutter/material.dart';

class IdentificationCard extends StatelessWidget {
  const IdentificationCard({super.key, required this.pregnantData});

  final PregnantData? pregnantData;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
        child: Column(
      children: [
        const Text(
          'Identificação',
          style: AppTheme.titleSmallStyle,
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomItemTile(
              flex: 1,
              title: 'Nome da gestante',
              content: getData(pregnantData?.name),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomItemTile(
              flex: 3,
              title: 'Prefere ser chamada',
              content: getData(pregnantData?.socialName),
            ),
            const SizedBox(width: 10),
            CustomItemTile(
              flex: 1,
              title: 'Idade',
              content: _getAge(),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomItemTile(
              flex: 1,
              title: 'Cartão Nacional de Saúde',
              content: getData(pregnantData?.nationalHealthCardNumber),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomItemTile(
              flex: 1,
              title: 'Local do pré-natal',
              content: getData(pregnantData?.preNatalPlace),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomItemTile(
              flex: 1,
              title: 'Profissional',
              content: getData(pregnantData?.profissionalName),
            ),
            const SizedBox(width: 10),
            CustomItemTile(
              flex: 1,
              title: 'Telefone',
              content: getData(pregnantData?.prenatalPlaceContact),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomItemTile(
              flex: 1,
              title: 'Maternidade',
              content: 'Maternidade Benção',
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
    ));
  }

  String _getAge() {
    if (pregnantData!.birthDate.isNotEmpty || pregnantData?.birthDate != null) {
      final birth = DateTime.parse(_transformDate(pregnantData!.birthDate));
      final today = DateTime.now();
      log(today.toString());
      final age = today.difference(birth);
      log((age.inDays / 365.25).toInt().toString());
      return (age.inDays / 365.25).toInt().toString();
    }
    return '';
  }

  String _transformDate(String date) {
    final formatted =
        '${date.substring(6, 10)}-${date.substring(3, 5)}-${date.substring(0, 2)}';
    log(formatted);
    return formatted;
  }

  String getData(String? raw) {
    if (raw == null || raw.isEmpty) {
      return 'Não informado';
    } else {
      return raw;
    }
  }
}
