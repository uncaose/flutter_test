import 'package:flutter/material.dart';
import '../i18n/messages.dart';

final msg = Messages();

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg.welcome),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(msg.hello),
              onPressed: () {
                Navigator.pushNamed(context, '/hello');
              },
            ),
            RaisedButton(
              child: Text(msg.number),
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
