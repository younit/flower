import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}



class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectdTime = TimeOfDay(hour: 9, minute: 30); //  定义当前时间

  _selectDate() async{ //  调用日期面板
  final DateTime date = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(1900),
    lastDate: DateTime(2100),
  );

  if (date == null) {
    return;
  }
  setState(() {
    selectedDate = date;
  });
}

  _selectTime() async { //  调用时间面板
  final TimeOfDay time = await showTimePicker(
    context: context,
    initialTime: selectdTime,
  );

  if (time == null) { return; }

  setState(() {
    selectdTime = time;
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell( //  日期选择
                    onTap: _selectDate,
                    child: Row(
                      children: <Widget>[
                        Text(DateFormat.yMd().format(selectedDate)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  InkWell( //  时间选择
                    onTap: _selectTime,
                    child: Row(
                      children: <Widget>[
                        Text(selectdTime.format(context)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}