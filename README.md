# flutter_test
 flutter test, example

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
  csv:

flutter:
  uses-material-design: true
  assets:
      - assets/translations/
```
2. maket dir
-   assets/translations/
3. make langs.csv

    *Example*
    ```json
    str,en,ko,ja
    title:Title,제목,題名
    ...
    ```
4. update runApp(), MatrialApp()
    ```dart
    import 'package:flutter/material.dart';
    import 'package:flutter_localizations/flutter_localizations.dart';
    import 'package:easy_localization_loader/easy_localization_loader.dart';
    import 'package:easy_localization/easy_localization.dart';

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