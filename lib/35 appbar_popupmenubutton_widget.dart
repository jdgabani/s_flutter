import 'package:flutter/material.dart';

class AppbarPopupmenuButtonWidget extends StatefulWidget {
  const AppbarPopupmenuButtonWidget({Key? key}) : super(key: key);

  @override
  State<AppbarPopupmenuButtonWidget> createState() =>
      _AppbarPopupmenuButtonWidgetState();
}

class _AppbarPopupmenuButtonWidgetState
    extends State<AppbarPopupmenuButtonWidget> {
  var ls = ['A', 'B', 'C', 'D', 'E', 'F '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.account_circle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Profile"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("About"),
                ),
              ];
            },
          )
        ],
      ),
      body: ReorderableListView(
        children: [
          for (var item in ls)
            Card(
              key: ValueKey(item),
              elevation: 2,
              child: ListTile(
                title: Text(item),
                leading: Icon(Icons.arrow_right),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            var item = ls.removeAt(oldIndex);
            ls.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
