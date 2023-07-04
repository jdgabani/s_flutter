import 'package:flutter/material.dart';

class ImageAndNetworkDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Image"),
      ),
      body: Center(
        child: Image.network(
          'https://wallpapercave.com/dwp2x/wp6946742.jpg',
        ),
      ),
    );
  }
}
