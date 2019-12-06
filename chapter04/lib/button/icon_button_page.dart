import 'package:flutter/material.dart';

class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.add),
          color: Colors.red, // 아이콘 색상
          iconSize: 100.0, // 기본값 24.0
          onPressed: () {},
        ),
      ),
    );
  }
}
