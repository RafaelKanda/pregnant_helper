import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with MessageViewMixin {
  @override
  Widget build(BuildContext context) {
    return _content;
  }

  Widget get _content => Container(
        constraints: BoxConstraints(
          maxHeight: context.screenHeight - 72,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Home',
                  style: AppTheme.titleStyle,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: context.screenWidth,
                color: AppTheme.secondaryColor,
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Image.asset(
                        'assets/images/baby_2.png',
                        height: 200,
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        Icons.assignment_add,
                        'Consultas e exames',
                        () => Navigator.pushNamed(
                          context,
                          '/home/appointments-exams',
                        ),
                      ),
                      _buildCard(
                        Icons.vaccines,
                        'Minhas vacinas',
                        () => Navigator.pushNamed(
                          context,
                          '/home/vaccines',
                        ),
                      ),
                      _buildCard(
                        Icons.medication_outlined,
                        'Meus medicamentos',
                        () => Navigator.pushNamed(
                          context,
                          '/home/medication',
                        ),
                      ),
                      _buildCard(
                        Icons.info_outline,
                        'Informações básicas',
                        () => Navigator.pushNamed(
                          context,
                          '/home/information',
                        ),
                        spacer: false,
                      ),
                    ],
                  ),
                ),
              ),
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
