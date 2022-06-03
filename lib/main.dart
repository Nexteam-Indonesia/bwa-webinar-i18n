import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:webinar_i18n/presentation/pages/home/home_page.dart';
import 'package:webinar_i18n/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: const MyApp(),
    supportedLocales: const [
      Locale('en'),
      Locale('id'),
    ],
    fallbackLocale: const Locale('id'),
    path: 'assets/translations',
    assetLoader: CodegenLoader(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'Easy i18n',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
