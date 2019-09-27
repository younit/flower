import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/post_show.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 15/9,
                child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,), //  图片来源网络
              ),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title //  设置文字样式
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead //  设置文字样式
              ),
              SizedBox(height: 16.0),
            ],
          ),
          Positioned.fill( //  添加渐墨动画效果
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PostShow(post: posts[index],)
                    )
                  ); 
                }
              ),
            ),
          )
        ],
      )
    );
  }
  @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      );
    }
}