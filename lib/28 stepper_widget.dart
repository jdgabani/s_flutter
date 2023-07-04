import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int activeStepIndex=0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController phone = TextEditingController();



  List<Step> stepList() => [
        Step(
            state: activeStepIndex <=0 ? StepState.editing:StepState.complete,
            isActive: activeStepIndex>=0,
            title: Text('Account'),
            content: Container(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  TextField(
                    controller: name,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Full Name',
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Email Id',
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: pass,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                    ),
                  ),
                ],
              ),
            ),
        ),
        Step(
            state: activeStepIndex <=1 ? StepState.editing:StepState.complete,
            isActive: activeStepIndex>=1,
            title: Text('Address'),
            content: Container(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  TextField(
                    controller: address,
                    keyboardType: TextInputType.streetAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full House Address',
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: pincode,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Pin Code',
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Contact No.',
                    ),
                  ),
                ],
              ),
            ),
        ),
        Step(
            state: StepState.complete,
            isActive: activeStepIndex>=2,
            title: Text('Confirm'),
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Name : ${name.text}'),
                  Text('Email : ${email.text}'),
                  Text('Password : *****'),
                  Text('Address : ${address.text}'),
                  Text('Pincode : ${pincode.text}'),
                  Text('Contact No. : ${phone.text}'),
                ],
              ),
            ),
        ),
      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (activeStepIndex <(stepList().length-1)){
            activeStepIndex++;
          }
           setState(() {

           });
        },
        onStepCancel: () {
          if(activeStepIndex==0){
            return;
          }
          activeStepIndex--;
          setState(() {

          });
        },
      ),
    );
  }
}
