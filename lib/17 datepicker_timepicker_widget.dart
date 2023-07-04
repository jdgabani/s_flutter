import 'package:flutter/material.dart';

class DatepickerTimepickerWidget extends StatefulWidget {
  const DatepickerTimepickerWidget({Key? key}) : super(key: key);

  @override
  State<DatepickerTimepickerWidget> createState() =>
      _DatepickerTimepickerWidgetState();
}

class _DatepickerTimepickerWidgetState
    extends State<DatepickerTimepickerWidget> {
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Time:- ${time.hour} : ${time.minute}'),
            leading: Icon(Icons.access_time),
            onTap: openTimePicker,
          ),
          ListTile(
            title: Text('Date:- ${date.day}/${date.month}/${date.year}'),
            leading: Icon(Icons.calendar_today_outlined),
            onTap: openDatePicker,
          ),
        ],
      ),
    );
  }

  openTimePicker() async {
    TimeOfDay? t = await showTimePicker(context: context, initialTime: time);
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  openDatePicker() async {
    DateTime? d = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025));
    if (d != null) {
      setState(() {
        date = d;
      });
    }
  }
}
