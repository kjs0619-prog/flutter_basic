import 'package:flutter/material.dart';
import 'package:flutter_basic/navigation/stateful_page.dart';
import 'package:flutter_basic/navigation/stateless_page.dart';

class NavigationMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('6. 네비게이션'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('StatelessWidget의 네비게이션'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
          ),
          ListTile(
            title: Text('StatefulWidget의 네비게이션'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstStatefulPage()),
              );
            },
          ),
          ListTile(
            title: Text('routes: FirstPage'),
            onTap: () {
              Navigator.pushNamed(context, '/first');
            },
          ),
          ListTile(
            title: Text('routes: SecondPage'),
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      ),
    );
  }
}
