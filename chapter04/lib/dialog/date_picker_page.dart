import 'package:flutter/material.dart';

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
