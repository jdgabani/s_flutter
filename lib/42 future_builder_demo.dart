import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget {
  const FutureBuilderDemo({Key? key}) : super(key: key);

  @override
  State<FutureBuilderDemo> createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("With Just 5 Seconds to Load Data..."),
            FutureBuilder(
              future:  dataLoad(),
              builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData){
                  return Column(
                    children: [
                      Text(snapshot.data,style:  const TextStyle(fontSize: 25),),
                      const Icon(Icons.check_circle_outline,color: Colors.green,size: 50,),
                    ],
                  );
              }else{
                return const CircularProgressIndicator();
              }
            },)
          ],
        ),
      ),
    );
  }

  dataLoad() async {
    await Future.delayed(const Duration(seconds: 5));
    return 'Data Loaded Succsesfully...';
  }
}
