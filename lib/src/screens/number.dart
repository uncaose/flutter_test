import 'package:flutter/material.dart';
import '../i18n/messages.dart';
import '../widgets/tile_title.dart';

final msg = Messages();

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg.title),
      ),
      body: getList(context),
    );
  }

  Widget getList(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          TileTitle(msg.n0),
          TileTitle(msg.n1),
          TileTitle(msg.n2),
          TileTitle(msg.n3),
          TileTitle(msg.n4),
          TileTitle(msg.n5),
          TileTitle(msg.n6),
          TileTitle(msg.n7),
          TileTitle(msg.n8),
          TileTitle(msg.n9),
          TileTitle(msg.n10),
          TileTitle(msg.n11),
          TileTitle(msg.n12),
        ],
      ).toList(),
    );
  }
}
