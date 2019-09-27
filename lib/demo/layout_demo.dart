import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3/1,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //  主轴
      crossAxisAlignment: CrossAxisAlignment.center, //  交叉轴
      children: <Widget>[
        // IconBadge(Icons.pool),
        // IconBadge(Icons.beach_access),
        // IconBadge(Icons.airplanemode_active),
        Stack(
          alignment: Alignment(-0.8, -0.8),
          children: <Widget>[
            SizedBox(
              width: 300.0,
              height: 400.0,
              child: Container(
                alignment: Alignment(0.0, 1.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                
              ),
            ),

            SizedBox(width: 32.0,),

            SizedBox(
              width: 50.0,
              height: 50.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  // borderRadius: BorderRadius.circular(8.0) 
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.white70,
                      Colors.white10,
                    ]
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 0.0), //  x, y
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      blurRadius: 22.0, //  阴影的模糊程度, 值越大越模糊
                      spreadRadius: 1, //  阴影的扩散程度, 值越大越扩散
                    )
                  ],
                ),
                child: Icon(Icons.brightness_2, color: Colors.white, size: 40.0,),
              ),
            ),
            Positioned(
              right: 20.0,
              top: 120.0,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            ),
            Positioned(
              right: 70.0,
              top: 180.0,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            ),
            Positioned(
              right: 30.0,
              top: 230.0,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            ),
            Positioned(
              right: 90.0,
              top: 20.0,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            ),
            Positioned(
              right: 4.0,
              top: -4.0,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            ),
            Positioned(
              right: 130.0,
              top: 60.0,
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            ),
          ],
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge (this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(2, 211, 211, 1)
    );
  }
}