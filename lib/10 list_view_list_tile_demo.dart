import 'package:flutter/material.dart';

class ListViewListTileDemo extends StatefulWidget {
  const ListViewListTileDemo({Key? key}) : super(key: key);

  @override
  State<ListViewListTileDemo> createState() => _ListViewListTileDemoState();
}

class _ListViewListTileDemoState extends State<ListViewListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('User 1'),
          ),
          ListTile(
            title: Text('User 2'),
            subtitle: Text('Sub User 2'),
          ),
          ListTile(
            title: Text('User 3'),
            subtitle: Text('Sub User 3'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('User 4'),
            subtitle: Text('Sub User 4'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('User 5'),
            subtitle: Text('Sub User 5'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.home_work_outlined),
            onTap: () {
              print('hello');
            },
          ),
          Text("J.D Gabani"),
          Container(
            height: 100,
            color: Colors.green,
          ),
          ListTile(
            title: Text('User 6'),
            subtitle: Text('Sub User 6'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.home_work_outlined),
            onTap: () {
              print('hello');
            },
          ),
          ListTile(
            title: Text('User 7'),
            subtitle: Text('Sub User 7'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.home_work_outlined),
            onTap: () {
              print('hello');
            },
          ),
          ListTile(
            title: Text('User 8'),
            subtitle: Text('Sub User 8'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.home_work_outlined),
            onTap: () {
              print('hello');
            },
          ),
          ListTile(
            title: Text('User 9'),
            subtitle: Text('Sub User 9'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.home_work_outlined),
            onTap: () {
              print('hello');
            },
          ),
          ListTile(
            title: Text('User 10'),
            subtitle: Text('Sub User 10'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.home_work_outlined),
            onTap: () {
              print('hello');
            },
          ),
        ],
      ),
    );
  }
}
