import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  @override
  _SingleChildScrollViewPageState createState() =>
      _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  final items = List.generate(100, (i) => i).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/c27452df8bf1089b236c32db5e19c6eaae4d1f2d/lib/multi/single_child_scroll_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((i) => Text('$i')).toList(),
        ),
      ),
    );
  }
}
