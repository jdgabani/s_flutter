import 'package:flutter/material.dart';

class SnackBarWidgetDemo extends StatefulWidget {
  const SnackBarWidgetDemo({Key? key}) : super(key: key);

  @override
  State<SnackBarWidgetDemo> createState() => _SnackBarWidgetDemoState();
}

class _SnackBarWidgetDemoState extends State<SnackBarWidgetDemo> {
  var ls = List.generate(50, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(ls[index]),
                  action: SnackBarAction(
                    label: 'UNDO',
                    textColor: Colors.blue,
                    onPressed: () {},
                  ),
                ),
              );
              print(ls[index]);
            },
          );
        },
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //         content: Text('Internet Data is slow !'),
      //         action: SnackBarAction(
      //           label: 'Retry',
      //           onPressed: () {},
      //         ),
      //       ));
      //     },
      //     child: Text('Show Snk'),
      //   ),
      // ),
    );
  }
}
