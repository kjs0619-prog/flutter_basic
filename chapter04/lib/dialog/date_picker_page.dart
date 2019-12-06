import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  String _selectedTime;

  TextField f;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/dialog/date_picker_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Future<TimeOfDay> selectedTime = showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,
              );

              selectedTime.then((timeOfDay) {
                setState(() {
                  _selectedTime = '${timeOfDay.hour}:${timeOfDay.minute}';
                });
              });
            },
            child: Text('Time Picker'),
          ),
          Text('$_selectedTime'),
        ],
      ),
    );
  }
}
