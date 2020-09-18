import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:easy_localization/easy_localization.dart';
import 'src/app.dart';

// reference asset_load.dart comment
class FileAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isEmpty || result[0].rawAddress.isEmpty) {
        throw new SocketException('SocketException: Failed host lookup');
      }

      return http
          .get(
              'https://raw.githubusercontent.com/uncaose/flutter_test/easy_localization/assets/translations/${locale.languageCode}.json')
          .then((response) => json.decode(response.body.toString()));
    } on SocketException catch (_) {
      return json.decode(await rootBundle
          .loadString('$path/${localeToString(locale, separator: "-")}.json'));
    } catch (e) {
      //Catch File exceptions
      return Future.value();
    }
  }
}

void main() => runApp(
      EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ko'),
          Locale('ja'),
        ],
        path: 'assets/translations',
        assetLoader: FileAssetLoader(),
        fallbackLocale: Locale('en'),
        child: App(),
      ),
    );
