import 'package:flutter/material.dart';


class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
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
              SwitchListTile(
                value: _switchItemA,
                onChanged: (value) {
                  setState(() {
                    _switchItemA = value;
                  });
                },
                title: Text('Switch Item A'),
                subtitle: Text('Description'),
                secondary: Icon(_switchItemA?Icons.visibility:Icons.visibility_off), //  设置图标
                selected: _switchItemA,
                activeColor: Colors.red,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text(_switchItemA? '😀': '☹️', style: TextStyle(fontSize: 32.0),),
                  // Switch( //  开关
                  //   value: _switchItemA,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _switchItemA = value;
                  //     });
                  //   },
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}