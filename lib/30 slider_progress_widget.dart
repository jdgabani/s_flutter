import 'package:flutter/material.dart';

class SliderProgressWidget extends StatefulWidget {
  const SliderProgressWidget({Key? key}) : super(key: key);

  @override
  State<SliderProgressWidget> createState() => _SliderProgressWidgetState();
}

class _SliderProgressWidgetState extends State<SliderProgressWidget> {
  var slide = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider & Progress"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Slider(
              value: slide,
              min: 0.0,
              max: 10.0,
              divisions: 5,
              label: slide.round().toString(),
              onChanged: (value) {
                print(value);
                setState(() {
                  slide=value;
                });
              },
            ),
          ),
          LinearProgressIndicator(),
          SizedBox(height: 20,),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
