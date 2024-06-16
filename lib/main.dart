import 'package:flutter/material.dart';
import 'package:flutter_application_5/first.dart';
import 'package:flutter_application_5/otp.dart';
import 'package:flutter_application_5/second.dart';

import 'third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => fristscreen(),
        "otp": (context) => OtpScreen(),
        "second": (context) => secondscreen(),
        "thrid": (context) => ThirdScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      // home: const fristscreen(),
    );
  }
}
