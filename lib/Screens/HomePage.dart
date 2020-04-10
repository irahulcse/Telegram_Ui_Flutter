import 'package:flutter/material.dart';
import 'package:telegram_ui_flutter/Models/Chart_Models.dart';
import 'package:telegram_ui_flutter/Models/Drawer_Screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl),
            ),
            title: Text(
              items[i].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              items[i].message,
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Text(
              items[i].time,
            ),
          );
        },
        separatorBuilder: (ctx, i) {
          return Divider();
        },
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_circle),
        backgroundColor: Color(
          0xFF65a9e0,
        ),
        onPressed: () {},
      ),
    );
  }
}
