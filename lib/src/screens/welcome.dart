import 'package:flutter/material.dart';
import '../drawers.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      drawer: Drawers(),
      body: welcome(context),
    );
  }

  Widget welcome(BuildContext context) {
    return Center(
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
            child: Text('Open darwer'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
    );
  }
}
