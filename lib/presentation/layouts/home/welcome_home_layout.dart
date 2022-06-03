import 'package:flutter/material.dart';
import 'package:webinar_i18n/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class WelcomeHomeLayout extends StatelessWidget {
  const WelcomeHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(LocaleKeys.welcome, style: TextStyle(fontSize: 14)).tr(args: ["Ilzam"]),
          SizedBox(height: 12),
          Text(LocaleKeys.good_morning, style: TextStyle(fontSize: 14)).tr(args: ["Ilzam"], gender: "male"),
        ],
      ),
    );
  }
}
