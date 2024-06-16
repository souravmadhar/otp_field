import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var numberOfFields = 4;
  Color primaryColor = Color.fromARGB(0, 16, 15, 15);
  bool clearText = true;
  late List<TextEditingController?> controls;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Field"),
      ),
      body: Column(
        children: [
          OtpTextField(
            numberOfFields: numberOfFields,
            borderColor: Color(0xFF512DA8),
            focusedBorderColor: primaryColor,
            clearText: clearText,
            showFieldAsBox: true,
            textStyle: theme.textTheme.titleMedium,
            onCodeChanged: (String value) {
              //Handle each value
            },
            handleControllers: (controllers) {
              //get all textFields controller, if needed
              controls = controllers;
            },
            onSubmit: (String verificationCode) {
              //set clear text to clear text from all fields
              setState(() {
                clearText = false;
              });
              //navigate to different screen code goes here
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Verification Code"),
                   // content: Text('Code entered is $verificationCode'),
                    actions: [
                      OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("second");
                          },
                          child: Text("ok"))
                    ],
                  );
                },
              );
            }, // end onSubmit
          )
        ],
      ),
    );
  }
}
