import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100], //  设置背景颜色
      decoration: BoxDecoration( //  设置背景图片
        image: DecorationImage(
          image: NetworkImage('http://mziu.club/1566203108263.jpeg'), //  图片来源于网络
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode( //  滤镜
            Colors.indigoAccent[400].withGreen(0),
            BlendMode.lighten
          )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.red,),
            // padding: EdgeInsets.all(8.0),
            // margin: EdgeInsets.all(18.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                color: Colors.red,
                width: 5.0,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5.0, 10.0), //  x, y
                  color: Color.fromRGBO(212, 134, 21, 1),
                  blurRadius: 10.0, //  阴影的模糊程度, 值越大越模糊
                  spreadRadius: -4, //  阴影的扩散程度, 值越大越扩散
                )
              ],
              shape: BoxShape.circle, //  设置盒子为圆形, 必须取消 borderRadius 属性
              // gradient: RadialGradient( //  镜像渐变
              //   colors: [
              //     Color.fromRGBO(212, 134, 2, 1),
              //     Color.fromRGBO(112, 234, 22, 1)
              //   ]
              // ),
              gradient: LinearGradient( //  线性渐变
                colors: [
                  Color.fromRGBO(212, 134, 2, 1),
                  Color.fromRGBO(112, 234, 22, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String thing = '转瞬的流星';
  final String place = '即逝的昙花';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Text(
      '我看过$thing, 也见过$place, 却唯独找不到你。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

