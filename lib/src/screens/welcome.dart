import 'package:flutter/material.dart';
import '../i18n/i18n.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.of(context).tr('welcome')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Hello'),
              onPressed: () {
                Navigator.pushNamed(context, '/hello');
              },
            ),
            RaisedButton(
              child: Text('Number'),
              onPressed: () {
                Navigator.pushNamed(context, '/number');
              },
            ),
          ],
        ),
      ),
    );
  }
}
