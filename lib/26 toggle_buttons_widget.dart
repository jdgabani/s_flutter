import 'package:flutter/material.dart';

class ToggleButtonsWidget extends StatefulWidget {
  const ToggleButtonsWidget({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsWidget> createState() => _ToggleButtonsWidgetState();
}

class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
  var isSwitch = false;
  var isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
              activeColor: Colors.deepOrange,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.purple,
              inactiveTrackColor: Colors.amber,
            ),
          ),
          Center(
            child: ToggleButtons(
              children: [
                Icon(Icons.home),
                Icon(Icons.work),
                Icon(Icons.account_circle),
              ],
              isSelected: isSelected,
              onPressed: (index) {
                setState(
                  () {
                    isSelected[index] = !isSelected[index];
                  },
                );
              },
              color: Colors.green,
              selectedColor: Colors.black,
              fillColor: Colors.grey,
              highlightColor: Colors.amber,
              splashColor: Colors.green,
              renderBorder: false,
            ),
          ),
        ],
      ),
    );
  }
}
