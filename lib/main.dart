import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'src/app.dart';

class HttpAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    try {
      return http
          .get('$path${locale.languageCode}.json') // modify path
          .then((response) => json.decode(response.body.toString()));
    } catch (e) {
      //Catch network exceptions
      return Future.value();
    }
  }
}

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ko'),
        Locale('ja'),
      ],
      path:
          'https://raw.githubusercontent.com/uncaose/flutter_test/easy_localization/assets/translations/',
      assetLoader: HttpAssetLoader(),
      fallbackLocale: Locale('en'),
      child: App(),
    ),
  );
}
