import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  final Key key;
  final Widget title;
  final Widget body;
  MyScaffold({this.key, this.title, this.body});

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      appBar: AppBar(
        title: widget.title,
      ),
      body: widget.body,
    );
  }
}
