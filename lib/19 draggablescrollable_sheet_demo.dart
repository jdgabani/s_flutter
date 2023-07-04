import 'package:flutter/material.dart';

class DraggableScrollableSheetDemo extends StatefulWidget {
  const DraggableScrollableSheetDemo({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetDemo> createState() =>
      _DraggableScrollableSheetDemoState();
}

class _DraggableScrollableSheetDemoState
    extends State<DraggableScrollableSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DraggableScrollable Sheet'),
      ),
      body: Center(
        child: Stack(
          children: [
            SizedBox.expand(
              child: Container(
                color: Colors.deepOrange,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.9,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Scrollbar(
                    child: ListView.builder(
                        controller: scrollController,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Item $index',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          );
                        }),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
