import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatefulWidget {
  const SimpleDialogWidget({Key? key}) : super(key: key);

  @override
  State<SimpleDialogWidget> createState() => _SimpleDialogWidgetState();
}

class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Dialog')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text('Users'),
                children: [
                  ListTile(
                    title: Text('Name :- Nikunj Munjani'),
                    subtitle: Text('User id :- 01'),
                  ),
                  ListTile(
                    title: Text('Name :- Viraj Asodariya'),
                    subtitle: Text('User id :- 02'),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('OK'),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          child: Text('Show'),
        ),
      ),
    );
  }
}
