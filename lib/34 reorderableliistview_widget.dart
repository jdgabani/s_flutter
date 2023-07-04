import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  var ls = ['A', 'B', 'C', 'D', 'E', 'F '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reorderable List View"),
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
           if (newIndex>oldIndex){
             newIndex-=1;
           }
           var item = ls.removeAt(oldIndex);
           ls.insert(newIndex, item);
         });
        },
      ),
    );
  }
}
