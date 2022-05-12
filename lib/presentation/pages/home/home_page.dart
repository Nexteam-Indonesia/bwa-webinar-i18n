import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webinar_i18n/presentation/layouts/home/setting_home_layout.dart';
import 'package:webinar_i18n/presentation/layouts/home/welcome_home_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;

  final layouts = [
    WelcomeHomeLayout(),
    SettingHomeLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layouts[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings_solid), label: 'Setting'),
        ],
      ),
    );
  }
}
