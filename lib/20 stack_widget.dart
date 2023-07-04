import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.deepOrange,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green.shade800,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black38,
            ),
          ],
        ),
      ),
    );
  }
}
