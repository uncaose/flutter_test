import 'package:flutter/material.dart';
import '../i18n/messages.dart';

final msg = Messages();

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg.title),
      ),
      body: Center(
        child: Text(msg.title),
      ),
    );
  }
}
