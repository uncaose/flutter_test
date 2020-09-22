import 'package:flutter/material.dart';
import 'routes.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'flutter_test',
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
