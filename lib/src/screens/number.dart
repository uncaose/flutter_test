import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/tile_title.dart';

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title').tr(),
      ),
      body: getList(context),
    );
  }

  Widget getList(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          Tiletitle('n0'.tr()),
          Tiletitle('n1'.tr()),
          Tiletitle('n2'.tr()),
          Tiletitle('n3'.tr()),
          Tiletitle('n4'.tr()),
          Tiletitle('n5'.tr()),
          Tiletitle('n6'.tr()),
          Tiletitle('n7'.tr()),
          Tiletitle('n8'.tr()),
          Tiletitle('n9'.tr()),
          Tiletitle('n10'.tr()),
          Tiletitle('n11'.tr()),
          Tiletitle('n12'.tr()),
          ...[]
              .map(
                (e) => Tiletitle(e.tr()),
              )
              .toList(),
        ],
      ).toList(),
    );
  }
}
