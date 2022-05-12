import 'package:flutter/material.dart';

class WelcomeHomeLayout extends StatelessWidget {
  const WelcomeHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Selamat Datang Ilzam', style: TextStyle(fontSize: 14)),
          SizedBox(height: 12),
          Text('Selamat Pagi Pak Ilzam', style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
