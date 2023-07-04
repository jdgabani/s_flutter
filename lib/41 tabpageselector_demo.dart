import 'package:flutter/material.dart';

class TabPageSelectorDemo extends StatefulWidget {
  const TabPageSelectorDemo({Key? key}) : super(key: key);

  @override
  State<TabPageSelectorDemo> createState() => _TabPageSelectorDemoState();
}

class _TabPageSelectorDemoState extends State<TabPageSelectorDemo> {
  var icons = [
    Icon(Icons.home),
    Icon(Icons.work),
    Icon(Icons.call),
    Icon(Icons.settings),
    Icon(Icons.landscape),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Page Selector"),
      ),
      body: DefaultTabController(
        length: icons.length,
        child: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                  child: TabPageSelector(),
                ),
                Expanded(
                  child: IconTheme(
                    data: IconThemeData(size: 150, color: Colors.deepOrange),
                    child: TabBarView(
                      children: icons,
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {
                  TabController controller = DefaultTabController.of(context);
                  controller.animateTo(icons.length-1);
                }, child: Text('SKIP')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
