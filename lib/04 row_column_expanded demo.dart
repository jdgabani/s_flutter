import 'package:flutter/material.dart';

class RowColumnExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row/Column/Expanded",
        ),
      ),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
              ),
            ),
            // Expanded(
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.purple,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
