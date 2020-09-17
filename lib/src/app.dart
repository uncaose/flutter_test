import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'i18n/i18n.dart';
import 'i18n/messages.dart';
import './routes.dart';

final msg = Messages();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) => msg.title,
      localizationsDelegates: [
        I18nDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('ko', ''),
      ],
      routes: routes,
    );
  }
}
