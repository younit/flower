import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
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
                  Slider(
                    value: _sliderItemA,
                    onChanged: (value) {
                      setState(() {
                        _sliderItemA = value;
                      });
                    },
                    activeColor: Colors.red,
                    inactiveColor: Colors.red.withOpacity(0.4),
                    min: 0.0,
                    max: 100.0,
                    divisions: 100,
                    label: '${_sliderItemA.toInt()}',
                  ),
                ],
              ),
              SizedBox(height: 32.0,),
              Text('SliderValue: $_sliderItemA')
            ],
          ),
        ),
      ),
    );
  }
}