import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  var value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print('GestureDetector 클릭!!');
              },
              child: Text('클릭 Me!!'),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                print('InkWell 클릭!!');
              },
              child: Text('클릭 Me!!'),
            ),
          ],
        ),
      ),
    );
  }
}
