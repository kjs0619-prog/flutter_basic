import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                launchURL(
                    'https://github.com/junsuk5/flutter_basic/blob/1a81a5d272a8bcd428f94513bbdd9b120d6d7d60/lib/multi/tab_page.dart');
              },
              icon: Image.asset('assets/github_icon.png'),
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.tag_faces,),),
              Tab(icon: Icon(Icons.credit_card,),),
              Tab(icon: Icon(Icons.info,),),
            ],
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              Container(color: Colors.yellow,),
              Container(color: Colors.orange,),
              Container(color: Colors.red,),
            ]),
      ),
    );
  }
}
