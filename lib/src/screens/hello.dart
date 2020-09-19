import 'package:flutter/material.dart';
import '../drawers.dart';

class Hello extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Hello'),
      ),
      drawer: Drawers(),
      body: hello(context),
    );
  }

  Widget hello(BuildContext context) {
    return Center(
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
          ),
          RaisedButton(
            onPressed: () {
              scaffoldKey.currentState
                  .showSnackBar(SnackBar(content: Text('Show Sackbar')));
            },
            child: Text('Snackbar'),
          ),
        ],
      ),
    );
  }
}
