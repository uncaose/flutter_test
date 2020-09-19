import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: FlatButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: Text(
                'Flutter Test',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Hello"),
            // trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.pushNamed(context, '/hello'),
          ),
          ListTile(
            title: Text("Number"),
            // trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.pushNamed(context, '/number'),
          ),
        ],
      ),
    );
  }
}
