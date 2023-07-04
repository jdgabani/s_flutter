import 'package:flutter/material.dart';
import 'package:s_flutter/39%20splash_screen.dart';

import 'newhome_page.dart';

class NavigatePassingData extends StatefulWidget {
  const NavigatePassingData({Key? key}) : super(key: key);

  @override
  State<NavigatePassingData> createState() => _NavigatePassingDataState();
}

class _NavigatePassingDataState extends State<NavigatePassingData> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Enter Your Name",
                  labelText: "Name",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewHomePage(user_name: controller.text),
                      ),
                    );
                  },
                  child: Text("HomePage"))
            ],
          ),
        ),
      ),
    );
  }
}
