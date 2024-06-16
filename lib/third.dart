import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(" third screen "),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  //  Navigator.of(context).push();
                },
                child: Text("thrid screen ")),
           
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
