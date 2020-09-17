import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('hello'.tr()),
              onPressed: () {
                Navigator.pushNamed(context, '/hello');
              },
            ),
            RaisedButton(
              child: Text('number'.tr()),
              onPressed: () {
                Navigator.pushNamed(context, '/number');
              },
            ),
          ],
        ),
      ),
    );
  }
}
