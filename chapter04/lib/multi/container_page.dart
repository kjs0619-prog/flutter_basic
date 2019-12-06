import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/1a81a5d272a8bcd428f94513bbdd9b120d6d7d60/lib/multi/container_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
      ),
    );
  }
}
