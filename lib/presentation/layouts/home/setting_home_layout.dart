import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';

class SettingHomeLayout extends StatelessWidget {
  SettingHomeLayout({Key? key}) : super(key: key);

  final controller = GroupController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimpleGroupedCheckbox<String>(
          controller: controller,
          itemsTitle: const ["Bahasa Indonesia", "English"],
          values: const ["id", "en"],
          groupStyle: GroupStyle(
            activeColor: Colors.blue,
            itemTitleStyle: const TextStyle(fontSize: 13),
          ),
          checkFirstElement: false,
        )
      ],
    );
  }
}
