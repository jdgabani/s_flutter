import 'package:flutter/material.dart';

class CardWidgetDemo extends StatefulWidget {
  const CardWidgetDemo({Key? key}) : super(key: key);

  @override
  State<CardWidgetDemo> createState() => _CardWidgetDemoState();
}

class _CardWidgetDemoState extends State<CardWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Card"),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.deepOrange.withOpacity(0.50),
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Text(
                    "J.D Gabani",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                elevation: 10,
              ),
              Card(
                color: Colors.teal.withOpacity(0.50),
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: InkWell(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    splashColor: Colors.greenAccent,
                    onTap: () {},
                  ),
                ),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Card(
                color: Colors.green.withOpacity(0.50),
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    splashColor: Colors.deepOrange,
                    onTap: () {},
                  ),
                ),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Card(
                color: Colors.pink.withOpacity(0.50),
                child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 300,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(180),
                    splashColor: Colors.amberAccent,
                    onTap: () {},
                  ),
                ),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(180),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
