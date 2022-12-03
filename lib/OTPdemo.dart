import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _demoPageState();
}

class _demoPageState extends State<DemoPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _optcontroller = TextEditingController();

  void sendOTP() async {
    EmailAuth emailAuth = EmailAuth(sessionName: "Test Session");

    var res = await emailAuth.sendOtp(recipientMail: _emailController.text);
    if (res) {
      print("Verification Code Sent!");
    } else {
      print("Failed to send the verification code");
    }
  }

  void verifyOTP() {
    EmailAuth emailAuth = EmailAuth(sessionName: "sessionName");
    var res = emailAuth.validateOtp(
        recipientMail: _emailController.text, userOtp: _optcontroller.text);
    if (res) {
      print("Email Verified!");
    } else {
      print("Invalid Verification Code");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            TextField(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              // onChanged: (value) {
              //   // password = value;
              //   //Do something with the user input.
              // },
              decoration: const InputDecoration(
                // hintText: "Enter Password",
                labelText: "email",
                // suffixIcon: TextButton(
                //   onPressed:()=>sendOTP(),
                //   // ignore: unnecessary_const
                //   child: const Text("Send OTP"),
                // ),
              ),
            ),
            ElevatedButton(
              // onPressed: =>sendOTP(),
              onPressed: () => sendOTP(),
              child: const Text("Send OTP"),
            ),
            // ignore: prefer_const_constructors
            TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              // onChanged: (value) {
              //   // password = value;
              //   //Do something with the user input.
              // },
              decoration: const InputDecoration(
                // hintText: "Enter Password",
                labelText: "OTP",
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("done");
                },
                child: const Text("Register"))
          ],
        ),
      ),
    );
  }

  void onpressed() {}
}
