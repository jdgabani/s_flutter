import 'dart:math';

import 'package:flutter/material.dart';

class AddingLogic extends StatelessWidget {
  var random = Random();

  AddingLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Adding Logic",
        ),
      ),
      body: Center(
        child: Text(
          '${randomNumber()}',
          style: const TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }

  randomNumber() {
    var number = random.nextInt(20);
    return number;
  }
}
