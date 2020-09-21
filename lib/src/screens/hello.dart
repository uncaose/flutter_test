import 'package:flutter/material.dart';
import '../my_scaffold.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: Text('Hello'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              child: Text('Hello World'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
              },
              child: Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
