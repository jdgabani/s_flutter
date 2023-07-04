import 'package:flutter/material.dart';

class ExpensionTileWidet extends StatefulWidget {
  const ExpensionTileWidet({Key? key}) : super(key: key);

  @override
  State<ExpensionTileWidet> createState() => _ExpensionTileWidetState();
}

class _ExpensionTileWidetState extends State<ExpensionTileWidet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expension Tile"),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Users"),
            subtitle: Text("Users Info"),
            leading: Icon(Icons.account_circle),
            // trailing: Icon(Icons.more_vert),
            children: [
              ListTile(
                title: Text("User 1"),
                subtitle: Text("Sub User 1"),
              ),
              ExpansionTile(
                title: Text("Sub Users"),
                subtitle: Text("Sub Users Info"),
                children: [
                  ListTile(
                    title: Text("User 1"),
                    subtitle: Text("Sub User 1"),
                  ),
                ],
              ),
              ListTile(
                title: Text("User 3"),
                subtitle: Text("Sub User 3"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
