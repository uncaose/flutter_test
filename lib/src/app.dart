import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import './routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: routes,
    );
  }
}
