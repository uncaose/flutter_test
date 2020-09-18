import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'src/app.dart';

void main() => runApp(
      EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ko'),
          Locale('ja'),
        ],
        path: 'assets/translations/langs.csv',
        assetLoader: CsvAssetLoader(),
        fallbackLocale: Locale('en'),
        child: App(),
      ),
    );
