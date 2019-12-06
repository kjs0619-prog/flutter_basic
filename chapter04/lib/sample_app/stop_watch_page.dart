import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  Timer _timer;

  int _time = 0;
  bool _isRunning = false;

  List<String> _lapTimes = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _isRunning = !_isRunning;

          if (_isRunning) {
            start();
          } else {
            pause();
          }
        }),
        tooltip: 'Increment Counter',
        child: _isRunning ? Icon(Icons.pause) : Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget _buildBody() {
    var sec = (_time / 100).round();
    var milli = _time % 100;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '$sec',
                      style: TextStyle(fontSize: 50.0),
                    ),
                    Text('$milli'.padLeft(2, '0'))
                  ],
                ),
                Container(
                  width: 100,
                  height: 200,
                  child: ListView.builder(
                      itemCount: _lapTimes.length,
                      itemBuilder: (context, index) {
                        return Text(_lapTimes[index]);
                      }),
                )
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: RaisedButton(
                onPressed: reset,
                child: Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    var milliFormat = '$milli'.padLeft(2, '0');
                    _lapTimes.insert(
                        0, '${_lapTimes.length + 1}LAB $sec.$milliFormat');
                  });
                },
                child: Text('랩타임'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void pause() {
    _timer?.cancel();
  }

  void reset() {
    _isRunning = false;
    _timer?.cancel();
    setState(() {
      _lapTimes.clear();
      _time = 0;
    });
  }
}
