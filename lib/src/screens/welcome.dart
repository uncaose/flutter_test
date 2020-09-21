import 'package:flutter/material.dart';
import '../my_scaffold.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: Text('welcome'),
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
            Text('Error occurred from second time.'),
            RaisedButton(
              child: Text('Login rxdart'),
              onPressed: () {
                Navigator.pushNamed(context, '/login_rxdart');
              },
            ),
            Text('There are no errors using the cache.'),
          ],
        ),
      ),
    );
  }
}
