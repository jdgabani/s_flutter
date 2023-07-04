import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Appbar"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepOrange,
        child: Row(
          children: [
            Container(
              height: 60,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
