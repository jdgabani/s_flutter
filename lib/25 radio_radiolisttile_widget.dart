import 'package:flutter/material.dart';

class RadioRadiolisttileWidget extends StatefulWidget {
  const RadioRadiolisttileWidget({Key? key}) : super(key: key);

  @override
  State<RadioRadiolisttileWidget> createState() =>
      _RadioRadiolisttileWidgetState();
}

class _RadioRadiolisttileWidgetState extends State<RadioRadiolisttileWidget> {
  var groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Radio Button"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              value: 1,
              groupValue: groupValue,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  groupValue = value!;
                });
              },
            ),
            Radio(
              value: 2,
              groupValue: groupValue,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  groupValue = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Radio 3'),
              subtitle: Text('Sub Radio 3'),
              secondary: Icon(Icons.person),
              value: 3,
              activeColor: Colors.green,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
