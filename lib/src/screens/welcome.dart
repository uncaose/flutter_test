import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

String path =
    'https://raw.githubusercontent.com/uncaose/flutter_test/easy_localization/assets/translations';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('hello'.tr()),
              onPressed: () {
                Navigator.pushNamed(context, '/hello');
              },
            ),
            RaisedButton(
              child: Text('number'.tr()),
              onPressed: () {
                Navigator.pushNamed(context, '/number');
              },
            ),
            RaisedButton(
              child: Text('lang.en').tr(),
              onPressed: () {
                context.locale = Locale('en');
              },
            ),
            RaisedButton(
              child: Text('lang.ko').tr(),
              onPressed: () {
                context.locale = Locale('ko');
              },
            ),
            RaisedButton(
              child: Text('lang.ja').tr(),
              onPressed: () {
                context.locale = Locale('ja');
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              alignment: Alignment.center,
              child: Text(
                  'context.locale.languageCode: ${context.locale.languageCode}'),
            ),
            Text("lang.es").tr(),
            Text('money').plural(
              1000000,
              format: NumberFormat.compact(locale: context.locale.toString()),
            ),
            Text('day').plural(21),
            Text(plural('money', 10.23)),
          ],
        ),
      ),
    );
  }
}
