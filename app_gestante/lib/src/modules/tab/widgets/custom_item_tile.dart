import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class CustomItemTile extends StatelessWidget {
  const CustomItemTile({
    super.key,
    required this.flex,
    required this.title,
    required this.content,
  });

  final int flex;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTheme.subTitleStyle.copyWith(fontSize: 16),
          ),
          Container(
            width: double.infinity,
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppTheme.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              content,
              style: AppTheme.textStyle,
            ),
          )
        ],
      ),
    );
  }
}
