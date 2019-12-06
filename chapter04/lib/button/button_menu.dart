import 'package:flutter/material.dart';
import 'package:flutter_basic/button/fab_button_page.dart';
import 'package:flutter_basic/button/flat_button_page.dart';
import 'package:flutter_basic/button/icon_button_page.dart';
import 'package:flutter_basic/button/raised_button_page.dart';

class ButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.4 버튼 계열 위젯'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('RaisedButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RaisedButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('FlatButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlatButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('IconButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IconButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('FloatingActionButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FloatingActionButtonPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
