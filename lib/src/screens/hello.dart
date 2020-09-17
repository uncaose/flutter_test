import 'package:flutter/material.dart';
import '../i18n/i18n.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.of(context).title),
      ),
      body: Center(
        child: Text(I18n.of(context).title),
      ),
    );
  }
}
