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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('title'.tr()),
              // args
              Text('msg').tr(
                args: ['Easy localization', 'Dart'],
              ),

              // namedArgs
              Text('msg_named').tr(namedArgs: {'lang': 'Dart'}),

              // args and namedArgs
              Text('msg_mixed')
                  .tr(args: ['Easy localization'], namedArgs: {'lang': 'Dart'}),

              // gender
              Text('gender').tr(gender: true ? "female" : "male"),
              Text('gender').tr(gender: false ? "female" : "male"),
              Text('gender').tr(gender: ''),
              Text('gender.female').tr(args: ['Have A Nice Day~']),
              Text('gender').tr(gender: '', args: ['Ping...Pong']),
            ],
          ),
        ),
      ),
    );
  }
}
