import 'package:flutter/material.dart';
import 'popup_menu_button_demo.dart';
import 'form_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'datetime_demo.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          ListItem(title: 'SliderDemo', page: SliderDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'RadioDemo', page: RadioDemo()),
          ListItem(title: 'CheckboxDemo', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton12', page: FloatingActionButtonDemo()),
          ListItem(title: 'popupMenuButtonDemo', page: PopupMenuButtonDemo()),
        ],
      ),
    );
  }
}


class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row( //  带背景色的按钮
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton( //  带背景色的按钮
          child: Text('Button'),
          onPressed: () {},
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon( //  带图标的文字按钮
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButtonDemo
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget { //  漂浮动作按钮
  @override
  Widget build(BuildContext context) {

    final Widget _floatingActionButton = FloatingActionButton( //  漂浮动作按钮
      onPressed: () {},
      child: Icon(Icons.add),
      backgroundColor: Colors.red,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0) //  棱形
      // )
    );

    final Widget _floatingActionButtonExtend = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('add'),
    );
    

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
      floatingActionButton: _floatingActionButton, //  漂浮动作按钮
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //  调整底部工具栏位置重叠
      bottomNavigationBar: BottomAppBar( //  底部工具栏
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle() //  设置圆形
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push( //  点击切换路由
          MaterialPageRoute(builder: (context) => page)
        );
      },
    );
  }
}