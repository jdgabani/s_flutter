import 'package:flutter/material.dart';

class StateFulWidgetDemo extends StatefulWidget {
  const StateFulWidgetDemo({Key? key}) : super(key: key);

  @override
  State<StateFulWidgetDemo> createState() => _StateFulWidgetDemoState();
}

class _StateFulWidgetDemoState extends State<StateFulWidgetDemo> {
  @override
  void initState() {
    print('InitState');
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget"),
      ),
      body: Center(
        child: Text("Hello StatefulWidget..."),
      ),
    );
  }
}
