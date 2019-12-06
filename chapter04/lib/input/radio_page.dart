import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

enum Gender { MAN, WOMEN }

class _RadioPageState extends State<RadioPage> {
  Gender _gender = Gender.MAN;

  TextEditingController c;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox / Radio / Switch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text('남자'),
                leading: Radio(
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('여자'),
                leading: Radio(
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              RadioListTile<Gender>(
                title: Text('남자'),
                value: Gender.MAN,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
              RadioListTile<Gender>(
                title: Text('여자'),
                value: Gender.WOMEN,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
