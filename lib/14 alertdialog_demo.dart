import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({Key? key}) : super(key: key);

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Alert"),
          onPressed: () {
            myAlert(context);
          },
        ),
      ),
    );
  }

  void myAlert(BuildContext context) {
    var alert = AlertDialog(
      title: Text('Delete...'),
      content: Text('Are You Sure???'),
      actions: [
        TextButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Massage Deleted",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16,
            );
            Navigator.pop(context);
          },
          child: Text('OK '),
        ),
        TextButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Cancle",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16,
            );
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
      ],
    );

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return alert;
        });
  }
}
