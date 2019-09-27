import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _BottomNavigationBarDemoState();
    }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState (() {
      _currentIndex = index;
    });
  }
  @override
    Widget build(BuildContext context) {
      return BottomNavigationBar( //  底部导航
        type: BottomNavigationBarType.fixed, //  设置导航栏流动，当数量大于4可用。
        // fixedColor: black, //  激活时的颜色
        currentIndex: _currentIndex, //  当前激活的索引
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My'),
          ),
        ]
      );
    }
}

