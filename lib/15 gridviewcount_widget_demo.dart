import 'package:flutter/material.dart';

class GridviewcountWidgetDemo extends StatefulWidget {
  const GridviewcountWidgetDemo({Key? key}) : super(key: key);

  @override
  State<GridviewcountWidgetDemo> createState() =>
      _GridviewcountWidgetDemoState();
}

class _GridviewcountWidgetDemoState extends State<GridviewcountWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Count"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // scrollDirection: Axis.horizontal,
        children: List.generate(
          50,
          (index) => Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.deepPurple.shade900, width: 5),
              ),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Text(
                "Item $index",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
