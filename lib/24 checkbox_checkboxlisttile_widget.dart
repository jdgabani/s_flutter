import 'package:flutter/material.dart';

class CheckBoxCheckboxlisttileWidget extends StatefulWidget {
  const CheckBoxCheckboxlisttileWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxCheckboxlisttileWidget> createState() =>
      _CheckBoxCheckboxlisttileWidgetState();
}

class _CheckBoxCheckboxlisttileWidgetState
    extends State<CheckBoxCheckboxlisttileWidget> {
  bool isCheck = false, isCheck2 = false, isCheck3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox & CheckBoxList Tile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // CheckBox
            Row(
              children: [
                Checkbox(
                  value: isCheck,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                ),
                Text("Check 1"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheck2,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      isCheck2 = value!;
                    });
                  },
                ),
                Text("Check 2"),
              ],
            ),
            // CheckBox List Tile
            CheckboxListTile(
              activeColor: Colors.green,
              title: Text('Check3'),
              subtitle: Text('Sub Check 3'),
              secondary: Icon(Icons.account_circle),
              value: isCheck3,
              onChanged: (value) {
                setState(() {
                  isCheck3=value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
