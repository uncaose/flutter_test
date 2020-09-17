import 'package:flutter/material.dart';

class TileTitle extends StatelessWidget {
  String title;
  String prefix;
  String subfix;
  TileTitle(this.title, {this.prefix, this.subfix});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${prefix ?? ""}${title ?? ""}${subfix ?? ""}'),
    );
  }
}
