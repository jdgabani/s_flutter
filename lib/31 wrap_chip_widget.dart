import 'package:flutter/material.dart';

class WrapChipWidget extends StatefulWidget {
  const WrapChipWidget({Key? key}) : super(key: key);

  @override
  State<WrapChipWidget> createState() => _WrapChipWidgetState();
}

class _WrapChipWidgetState extends State<WrapChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap & Chip"),
      ),
      body: Wrap(
        // direction: Axis.vertical,
        spacing: 5,
        children: [
          'Jaydeep',
          'Viraj',
          'Nikunj',
          'Deep',
          'Denish',
          'Laxshit',
          'Milind',
          'Milin',
          'Vishal',
        ].map((name) {
          return Chip(
            label: Text(name),
            avatar: CircleAvatar(
              child: Text(name.substring(0, 1)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
