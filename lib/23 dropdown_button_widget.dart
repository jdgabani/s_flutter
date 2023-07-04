import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({Key? key}) : super(key: key);

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  var ls = ['One', 'Two', 'Three', 'Four', 'Five'];
  var currentItem='One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Button"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton(
              items: ls
                  .map((item) => DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      ),
                    )
                  .toList(),
              value: currentItem, onChanged: (value) {
                setState(() {
                  currentItem=value!;
                });
            },
            ),
          ],
        ),
      ),
    );
  }
}
