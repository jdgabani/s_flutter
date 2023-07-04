import 'package:flutter/material.dart';

class CustomFontsSafeareaDemo extends StatelessWidget {
  const CustomFontsSafeareaDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Fonts & Safearea"),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "J.D Gabani",
            style: TextStyle(
              fontSize: 40,
              color: Colors.pink,
              fontFamily: 'SourceSerifPro',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
