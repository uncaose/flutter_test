import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title').tr(),
      ),
      body: Center(
        child: Text('title'.tr()),
      ),
    );
  }
}
