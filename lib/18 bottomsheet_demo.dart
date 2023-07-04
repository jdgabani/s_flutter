import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({Key? key}) : super(key: key);

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (context) => Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.deepOrange),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('User 1'),
                      subtitle: Text('Sub User 1'),
                    ),
                    ListTile(
                      title: Text('User 2'),
                      subtitle: Text('Sub User 2'),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
