import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    super.key,
    required this.name,
    required this.dose,
    required this.medicineTime,
    required this.onTap,
  });

  final String name;
  final String dose;
  final String medicineTime;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Deseja excluir esse medicamento?',
                  style: AppTheme.titleSmallStyle,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Não'),
                  ),
                  TextButton(
                    onPressed: () {
                      onTap();
                      Navigator.pop(context);
                    },
                    child: const Text('Sim'),
                  ),
                ],
              ),
            );
          },
          child: BaseCard(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.subTitleStyle,
                    ),
                    Text(
                      dose,
                      style: AppTheme.textStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    medicineTime,
                    style: AppTheme.textStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
