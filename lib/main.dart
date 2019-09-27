import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';

void main() => runApp(App());
class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Home(),
        initialRoute: '/mdc', //  初始路由
        routes: {
          '/': (context) => Home(), //  指定页面
          '/about': (context) => Page(title: 'about',),
          '/form': (context) => FormDemo(),
          '/mdc': (context) => MaterialComponents(),
        },
        theme: ThemeData(
          primarySwatch: Colors.red, //  设置颜色主题
        )
      );
    }
}

class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'menu',
            //   onPressed: () => debugPrint('pressed menu'),
            // ),
            title: Text('world'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint('pressed search'),
              ),
            ],
            elevation: 20.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38, //  未选中标题文字颜色
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.video_call)),
              ],
            ),
          ),
          // body: ListViewDemo(),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
              // Icon(Icons.directions_bike, size:128.0, color: Colors.black12),
            ],
          ),
          drawer: DrawerDemo(), //  左边抽屉
          bottomNavigationBar: BottomNavigationBarDemo()
        )
      );
    }
}

// class Home extends StatelessWidget {
//   @override
//     Widget build(BuildContext context) {
//       return
//     }
// }
