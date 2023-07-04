import 'package:flutter/material.dart';

class IntrinsicWidget extends StatefulWidget {
  const IntrinsicWidget({Key? key}) : super(key: key);

  @override
  State<IntrinsicWidget> createState() => _IntrinsicWidgetState();
}

class _IntrinsicWidgetState extends State<IntrinsicWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intrinsic"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Button 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Button 2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Button 3"),
            ),
          ],
        ),
      ),
    );
  }
}
