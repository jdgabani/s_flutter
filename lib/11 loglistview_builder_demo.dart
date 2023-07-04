import 'package:flutter/material.dart';

class LongListViewBuilderDemo extends StatefulWidget {
  const LongListViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<LongListViewBuilderDemo> createState() =>
      _LongListViewBuilderDemoState();
}

class _LongListViewBuilderDemoState extends State<LongListViewBuilderDemo> {
  var ls = List.generate(50, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder"),
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.arrow_forward),
            title: Text(
              ls[index],
            ),
            onTap: () {
              print(ls[index]);
            },
          );
        },
      ),
    );
  }
}
