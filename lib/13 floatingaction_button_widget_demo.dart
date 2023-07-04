import 'package:flutter/material.dart';

class FloatingactionButtonWidgetDemo extends StatefulWidget {
  const FloatingactionButtonWidgetDemo({Key? key}) : super(key: key);

  @override
  State<FloatingactionButtonWidgetDemo> createState() =>
      _FloatingactionButtonWidgetDemoState();
}

class _FloatingactionButtonWidgetDemoState
    extends State<FloatingactionButtonWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('click');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
