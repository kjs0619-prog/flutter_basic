import 'package:flutter/material.dart';

class FlatButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButtonPage'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('FlatButton'),
          onPressed: () {},
        ),
      ),
    );
  }
}
