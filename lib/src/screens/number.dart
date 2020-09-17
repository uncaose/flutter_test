import 'package:flutter/material.dart';
import '../i18n/i18n.dart';
import '../widgets/tile_title.dart';

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.of(context).title),
      ),
      body: getList(context),
    );
  }

  Widget getList(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          TileTitle(I18n.of(context).tr('n0')),
          TileTitle(I18n.of(context).tr('n1')),
          TileTitle(I18n.of(context).tr('n2')),
          TileTitle(I18n.of(context).tr('n3')),
          TileTitle(I18n.of(context).tr('n4')),
          TileTitle(I18n.of(context).tr('n5')),
          TileTitle(I18n.of(context).tr('n6')),
          TileTitle(I18n.of(context).tr('n7')),
          TileTitle(I18n.of(context).tr('n8')),
          TileTitle(I18n.of(context).tr('n9')),
          TileTitle(I18n.of(context).tr('n10')),
          TileTitle(I18n.of(context).tr('n11')),
          TileTitle(I18n.of(context).tr('n12')),
          ...['n0', 'n2', 'n9', 'n3', 'n12']
              .map((e) => TileTitle(I18n.of(context).tr(e)))
              .toList(),
        ],
      ).toList(),
    );
  }
}
