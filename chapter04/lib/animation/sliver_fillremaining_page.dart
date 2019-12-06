import 'package:flutter/material.dart';

class SliverFillRemainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.asset(
                'assets/sample.jpg',
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset('assets/github_icon.png'),
                onPressed: () {},
              )
            ],
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('center'),
            ),
          ),
        ],
      ),
    );
  }
}
