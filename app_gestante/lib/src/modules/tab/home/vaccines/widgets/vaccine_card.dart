import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:flutter/material.dart';

class VaccineCard extends StatelessWidget {
  const VaccineCard({
    super.key,
    required this.used,
    required this.onChanged,
    required this.index,
  });

  final bool used;
  final int index;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseCard(
          child: SizedBox(
            height: 72,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 5,
                  child: Text(
                    _getName(index),
                    style: AppTheme.subTitleStyle,
                  ),
                ),
                Flexible(
                  child: Checkbox(
                    value: used,
                    onChanged: (value) {
                      onChanged();
                    },
                  ),
                ),
                IconButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => _infoAlert(index, context)),
                  icon: const Icon(
                    Icons.info,
                    color: AppTheme.darkTextColor,
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

  AlertDialog _infoAlert(int index, BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Sobre a vacina',
        textAlign: TextAlign.center,
        style: AppTheme.titleSmallStyle,
      ),
      content: SizedBox(
        width: context.screenWidth * .8,
        child: Text(
          _getInfo(index),
          textAlign: TextAlign.justify,
          style: AppTheme.textStyle,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Voltar'),
        ),
      ],
    );
  }

  String _getInfo(int index) {
    switch (index) {
      case 0:
      case 1:
      case 2:
        return 'Essa vacina protege contra Hepatite B. Pode ser tomada em qualquer tempo do pré-natal, precisando de três doses.';
      case 3:
      case 4:
      case 5:
        return 'Essa vacina protege contra Difteria e Tétano. Pode ser tomada em qualquer tempo do pré-natal precisando de três doses.';
      case 6:
        return 'Essa vacina protege contra Difteria, Tétano e Coqueluche. Indica-se tomar a partir da 20ª semana da gravidez ou o mais breve possível em até 45 dias pós-parto.';
    }
    return '';
  }

  String _getName(int index) {
    switch (index) {
      case 0:
        return 'Hepatite B (HB - recombinante) (Dose 1)';
      case 1:
        return 'Hepatite B (HB - recombinante) (Dose 2)';
      case 2:
        return 'Hepatite B (HB - recombinante) (Dose 3)';
      case 3:
        return 'Difteria e Tétano (dT) (Dose 1)';
      case 4:
        return 'Difteria e Tétano (dT) (Dose 2)';
      case 5:
        return 'Difteria e Tétano (dT) (Dose 3)';
      case 6:
        return 'Vacina Difteria, Tétano, Pertussis (dTpa - acelular)';
    }
    return '';
  }
}
