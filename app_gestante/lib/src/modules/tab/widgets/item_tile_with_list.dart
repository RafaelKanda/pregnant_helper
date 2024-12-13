import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';

class ItemTileWithList extends StatelessWidget {
  const ItemTileWithList({super.key, required this.title, required this.list});

  final String title;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTheme.subTitleStyle.copyWith(fontSize: 16),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index < list.length) {
                  return Container(
                    width: (context.screenWidth - 70) / 2,
                    margin: index == list.length - 1
                        ? null
                        : const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: AppTheme.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        list[index],
                        style: AppTheme.textStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }
}
