import 'package:flutter/material.dart';

class ButtonTypes extends StatefulWidget {
  const ButtonTypes({Key? key}) : super(key: key);

  @override
  State<ButtonTypes> createState() => _ButtonTypesState();
}

class _ButtonTypesState extends State<ButtonTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Types'),
      ),
      body: Center(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('J.D Gabani');
                  },
                  child: Text('ElevatedButton'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('ElevatedButton'),
                ),
              ],
            ),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("TextButton"),
                ),
                TextButton(
                  onPressed: null,
                  child: Text("TextButton"),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_box_outlined,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
