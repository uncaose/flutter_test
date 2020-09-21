import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  Widget title;
  Widget body;
  MyScaffold({this.title, this.body});

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
      ),
      body: widget.body,
    );
  }
}
