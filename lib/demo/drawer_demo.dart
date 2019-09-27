import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Drawer(
        child:  ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('header'.toUpperCase()),
            //   decoration: BoxDecoration(
            //     color: Colors.grey[100]
            //   )
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('younit', style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text('younit@aliyun.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('http://mziu.club/1566970072195.jpeg')
              ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('http://mziu.club/1566202904161.jpeg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode( //  滤镜: 1.颜色, 2.混合模式
                      Colors.red[400].withOpacity(0.6),
                      BlendMode.hardLight
                    )
                  )
              )
            ),
            ListTile(
              title: Text('Message', textAlign: TextAlign.right),
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context)
            ),
            ListTile(
              title: Text('Favorite', textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context)
            ),
            ListTile(
              title: Text('Settings', textAlign: TextAlign.right),
              trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context)
            ),
          ],
        )
      );
    }
}
