import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tiletitle extends StatelessWidget {
  String title;
  String prefix;
  String subfix;
  Tiletitle(this.title, {this.prefix, this.subfix});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${prefix ?? ""}${title ?? ""}${subfix ?? ""}'),
    );
  }
}
