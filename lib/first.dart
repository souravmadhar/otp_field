import 'package:flutter/material.dart';
//import 'package:flutter_application_5/second.dart';

class fristscreen extends StatefulWidget {
  const fristscreen({super.key});

  @override
  State<fristscreen> createState() => _fristscreenState();
}

class _fristscreenState extends State<fristscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(" first screen "),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("otp");
                },
                child: Text("push screen "))
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
