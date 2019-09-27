import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _handleRadioValueChanged (int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
      ),
      body: Theme(
        data: ThemeData( //  定制当前页面主题
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('RadioGroupValue: $_radioGroupA'),
              SizedBox(height: 32.0,),
              RadioListTile( //  带标签与图标的单选按钮
                value: 0,
                groupValue: _radioGroupA,
                onChanged: _handleRadioValueChanged,
                title: Text('Option A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.filter_1),
                selected: _radioGroupA == 0,
                activeColor: Colors.red,
              ),
              RadioListTile(
                value: 1,
                groupValue: _radioGroupA,
                onChanged: _handleRadioValueChanged,
                title: Text('Option B'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.filter_2),
                selected: _radioGroupA == 1,
                activeColor: Colors.red,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Radio( //  单选按钮
                  //   value: 0,
                  //   groupValue: _radioGroupA,
                  //   onChanged: _handleRadioValueChanged,
                  //   activeColor: Colors.red,
                  // ),
                  // Radio(
                  //   value: 0,
                  //   groupValue: _radioGroupA,
                  //   onChanged: _handleRadioValueChanged,
                  //   activeColor: Colors.red,
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}