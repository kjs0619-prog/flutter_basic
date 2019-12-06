import 'package:flutter/material.dart';
import 'package:flutter_basic/realworldui/scroll_and_bottom_button.dart';
import 'package:flutter_basic/sample_app/stop_watch_page.dart';

class SampleAppMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7~. 앱 작성'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('비만도 계산'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StopWatchPage()),
              );
            },
          ),
          ListTile(
            title: Text('스톱워치'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StopWatchPage()),
              );
            },
          ),
          ListTile(
            title: Text('상단 스크롤, 하단 버튼'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ScrollAndBottomButton()),
              );
            },
          ),
        ],
      ),
    );
  }
}
