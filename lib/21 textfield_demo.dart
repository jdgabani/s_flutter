import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              // onSubmitted: (value) {
              //   setState(() {
              //     name = value;
              //   });
              // },
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter Your Name...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: name.isEmpty
                ? Text('')
                : Text(
                    'Your Name Is  $name',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
