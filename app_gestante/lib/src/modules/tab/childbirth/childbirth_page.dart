import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/childbirth/childbirth_resume/childbirth_resume_card.dart';
import 'package:app_gestante/src/modules/tab/childbirth/update_childbirth/update_childbirth_card.dart';
import 'package:flutter/material.dart';

class ChildbirthPage extends StatefulWidget {
  const ChildbirthPage({super.key});

  @override
  State<ChildbirthPage> createState() => _ChildbirthPageState();
}

class _ChildbirthPageState extends State<ChildbirthPage>
    with SingleTickerProviderStateMixin {
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
            SizedBox(
              height: 150,
              width: context.screenWidth,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Plano de Parto',
                  style: AppTheme.titleStyle,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: context.screenWidth,
                height: double.infinity,
                color: AppTheme.secondaryColor,
                padding: const EdgeInsets.all(20),
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      ChildbirthResumeCard(),
                      SizedBox(
                        height: 16,
                      ),
                      UpdateChildbirthCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
