import 'package:flutter/material.dart';
import '../widgets/tile_title.dart';

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number'),
      ),
      body: getList(context),
    );
  }

  Widget getList(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          TileTitle('n0'),
          TileTitle('n1'),
          TileTitle('n2'),
          TileTitle('n3'),
          TileTitle('n4'),
          TileTitle('n5'),
          TileTitle('n6'),
          TileTitle('n7'),
          TileTitle('n8'),
          TileTitle('n9'),
          TileTitle('n10'),
          TileTitle('n11'),
          TileTitle('n12'),
          ...['n0', 'n2', 'n9', 'n3', 'n12'].map((e) => TileTitle(e)).toList(),
        ],
      ).toList(),
    );
  }
}
