import 'package:flutter/material.dart';
import 'package:flutter_application_5/third.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(" second screen "),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("second screen ")),
            //  OutlinedButton(
            //    onPressed: () {
            //   Navigator.of(context).pushAndRemoveUntil(
            //    MaterialPageRoute(builder: (context) => ThirdScreen())),
            //   },
            //  child: Text("back"))
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
