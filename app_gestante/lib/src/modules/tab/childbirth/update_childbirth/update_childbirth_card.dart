import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:flutter/material.dart';

class UpdateChildbirthCard extends StatelessWidget {
  const UpdateChildbirthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        children: [
          const Text(
            'Atualize seu plano de parto',
            style: AppTheme.titleSmallStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              _buildButton(
                'Identificação',
                () {
                  Navigator.pushNamed(
                    context,
                    '/update-childbirth/identification',
                  );
                },
              ),
              const SizedBox(
                width: 10,
              ),
              _buildButton('História', () {
                Navigator.pushNamed(
                  context,
                  '/update-childbirth/history',
                );
              }),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              _buildButton('Gravidez atual', () {
                Navigator.pushNamed(
                  context,
                  '/update-childbirth/current',
                );
              }),
              const SizedBox(
                width: 10,
              ),
              _buildButton('Expectativas', () {
                Navigator.pushNamed(
                  context,
                  '/update-childbirth/expectations',
                );
              }),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              _buildButton('Parto', () {}),
              const SizedBox(
                width: 10,
              ),
              _buildButton('Alívio da dor', () {}),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              _buildButton('Nascimento', () {}),
              const SizedBox(
                width: 10,
              ),
              _buildButton('Observações', () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String title, VoidCallback onPressed) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(title),
        ),
      ),
    );
  }
}
