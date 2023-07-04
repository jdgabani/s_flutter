import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  State<RichTextWidget> createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
              text: "Hello",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: "Welcome",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.pink),
                )
              ]),
        ),
      ),
    );
  }
}
