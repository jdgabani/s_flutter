import 'package:flutter/material.dart';

class FormValidationDemo extends StatefulWidget {
  const FormValidationDemo({Key? key}) : super(key: key);

  @override
  State<FormValidationDemo> createState() => _FormValidationDemoState();
}

class _FormValidationDemoState extends State<FormValidationDemo> {
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormValidation'),
      ),
      body: Form(
        key: key,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'User Name Can\'t be empty';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  print('Data Submitted...');
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
