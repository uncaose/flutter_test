import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'src/app.dart';

void main() => runApp(
      EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ko'),
          Locale('ja'),
        ],
        path: 'assets/translations', // <-- change patch to your
        fallbackLocale: Locale('en'),
        child: App(),
      ),
    );
