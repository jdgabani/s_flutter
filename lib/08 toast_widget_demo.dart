import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidgetDemo extends StatefulWidget {
  const ToastWidgetDemo({Key? key}) : super(key: key);

  @override
  State<ToastWidgetDemo> createState() => _ToastWidgetDemoState();
}

class _ToastWidgetDemoState extends State<ToastWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast message"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Sending message...",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16,
            );
          },
          child: Text("Click Toast"),
        ),
      ),
    );
  }
}
