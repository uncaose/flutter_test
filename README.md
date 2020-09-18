# flutter_test
- flutter test, example
- http and local file switch on network state

# Ref
- [easy_localization package documentation](https://pub.dev/documentation/easy_localization/latest/)
- [easy_localization/example/resources/langs/](https://github.com/aissat/easy_localization/blob/master/example/resources/langs/)
- [aissat / easy_localization_loader](https://github.com/aissat/easy_localization_loader)

# Proecss
1. pubspec.yaml
  ```yaml
  flutter:
    flutter_localizations:
      sdk: flutter
    easy_localization:
    easy_localization_loader:
      git: https://github.com/aissat/easy_localization_loader.git

  flutter:
    uses-material-design: true
    assets:
        - assets/translations/
  ```
2. maket dir
-   assets/translations/
3. make local {lang}.json
  ```json
  {
    "key": "val"
  }
  ```
4. update runApp(), MatrialApp()
  ```dart
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
  ```
  ```dart
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
  ```
6. udpate translate text
  ```dart
  Text('title').tr() //Text widget
  print('title'.tr()); //String
  var title = tr('title') //Static function

  // args
  Text('msg').tr(args: ['Easy localization', 'Dart']),
  // namedArgs
  Text('msg_named').tr(namedArgs: {'lang': 'Dart'}),
  // args and namedArgs
  Text('msg_mixed').tr(args: ['Easy localization'], namedArgs: {'lang': 'Dart'}),
  // gender
  Text('gender').tr(gender: _gender ? "female" : "male"),
  ```