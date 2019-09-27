import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget { //  按需生成视图项目
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget { //  extent网格视图
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color:Colors.green[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index'),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 200.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget { //  网格视图
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color:Colors.green[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index'),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3, //  每一行显示的数据数量
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget { //  按需生成页面
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          right: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //  交叉轴
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 32.0),
              ),
              Text(
                posts[index].author,
                style: TextStyle(color: Colors.green, fontSize: 32.0),
              ),
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget { //  用pageController调整页面的显示
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      onPageChanged: (currentPage) => debugPrint('page: $currentPage'),
      controller: PageController(
        initialPage: 1, //  默认初始显示页

      ),
      children: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color:Colors.white70)
          ),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color:Colors.grey)
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color:Colors.white70)
          ),
        ),
      ],
    );
  }
}