import 'package:flutter/material.dart';

class SwipeToDismissWidget extends StatefulWidget {
  const SwipeToDismissWidget({Key? key}) : super(key: key);

  @override
  State<SwipeToDismissWidget> createState() => _SwipeToDismissWidgetState();
}

class _SwipeToDismissWidgetState extends State<SwipeToDismissWidget> {
  var ls = List.generate(50, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe to Dismiss"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ls.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: Icon(Icons.delete,color: Colors.red,),
                  crossAxisEndOffset: 0,
                  child: ListTile(
                    title: Text('Item $index'),
                  ),
                  onDismissed: (der) {
                    ls.removeAt(index);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Item$index Dismiss"),
                        action: SnackBarAction(
                          label: 'UNDO ',
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
