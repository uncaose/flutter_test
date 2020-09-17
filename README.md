# flutter_test
 flutter test, example

# Ref
- [easy_localization package documentation](https://pub.dev/documentation/easy_localization/latest/)
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
3. make lang
- {lang}.json
- {lang}_{locale}.json

    *Example*
    ```json
    {
    "msg":"{} are written in the {} language",
    "msg_named":"Easy localization are written in the {lang} language",
    "msg_mixed":"{} are written in the {lang} language",
    "gender":{
        "male":"Hi man ;) {}",
        "female":"Hello girl :) {}",
        "other":"Hello {}"
    }
    }
    ```
4. update runApp(), MatrialApp()
    ```dart
    import 'package:flutter/material.dart';
    import 'package:flutter_localizations/flutter_localizations.dart';
    import 'package:easy_localization/easy_localization.dart';

    void main() {
    runApp(
        EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
        path: 'assets/translations', // <-- change patch to your
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()
        ),
    );
    }

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: MyHomePage()
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