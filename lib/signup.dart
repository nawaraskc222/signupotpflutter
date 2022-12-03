import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'OTPdemo.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  late String email;
  final _myControllerEmail = TextEditingController();
  final _myControllerPassword = TextEditingController();
  late String password;
  bool showSpinner = false;
  void dispose() {
    _myControllerEmail.dispose();
    _myControllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp Page"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            padding: const EdgeInsetsDirectional.all(20),
            child: const Text(
              "Create Account",
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              email = value;
              //Do something with the user input.
            },
            decoration: const InputDecoration(
              // hintText: "Enter email",
              labelText: "Email",
            ),
          ),
          TextField(
            obscureText: true,
            onChanged: (value) {
              password = value;
              //Do something with the user input.
            },
            decoration: const InputDecoration(
              // hintText: "Enter Password",
              labelText: "Password",
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              print("Entering");
              setState(() {
                showSpinner = true;
              });
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email, password: password);
                if (newUser != null) {
                  //Navigator.pushNamed(context, 'home_screen');
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DemoPage()),
                  );

                  // context.goNamed(demoPageRoute);
                }
              } catch (e) {
                print(e);
              }
              setState(() {
                showSpinner = false;
              });
              print("gettting out");
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text("Click ME!!"),
          )
        ],
      )),
    );
  }
}
