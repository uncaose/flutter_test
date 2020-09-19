import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
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
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
