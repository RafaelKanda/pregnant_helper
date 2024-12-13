import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  AppBar get _buildAppBar => AppBar(
        title: const Text(
          'Mais Informações',
          style: AppTheme.titleSmallStyle,
        ),
        centerTitle: true,
      );

  Widget get _buildBody => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildCard(
              Icons.girl_outlined,
              'Mudanças no corpo',
              () {},
            ),
            _buildCard(
              Icons.pregnant_woman,
              'Minha gravidez',
              () {},
            ),
            _buildCard(
              Icons.watch_later_outlined,
              'Chegou a hora',
              () {},
            ),
            _buildCard(
              Icons.baby_changing_station,
              'Após o parto',
              () {},
              spacer: false,
            ),
          ],
        ),
      );

  Widget _buildCard(IconData icon, String title, VoidCallback onTap,
          {bool spacer = true}) =>
      Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Icon(
                    icon,
                    size: 48,
                    color: AppTheme.darkTextColor,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: AppTheme.subTitleStyle,
                  ),
                ],
              ),
            ),
          ),
          if (spacer) const SizedBox(height: 16),
        ],
      );
}
