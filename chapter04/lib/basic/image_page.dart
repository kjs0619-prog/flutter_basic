import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Image.network('https://t1.daumcdn.net/cfile/tistory/9994463B5C2B89F731')
      ),
    );
  }
}
