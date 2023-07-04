import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {

  final user_name;

  NewHomePage({this.user_name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Text(
          user_name,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
