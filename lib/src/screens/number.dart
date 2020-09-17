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
          TileTitle('n0'.tr()),
          TileTitle('n1'.tr()),
          TileTitle('n2'.tr()),
          TileTitle('n3'.tr()),
          TileTitle('n4'.tr()),
          TileTitle('n5'.tr()),
          TileTitle('n6'.tr()),
          TileTitle('n7'.tr()),
          TileTitle('n8'.tr()),
          TileTitle('n9'.tr()),
          TileTitle('n10'.tr()),
          TileTitle('n11'.tr()),
          TileTitle('n12'.tr()),
          ...[]
              .map(
                (e) => TileTitle(e.tr()),
              )
              .toList(),
        ],
      ).toList(),
    );
  }
}
