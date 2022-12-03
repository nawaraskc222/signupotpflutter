import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadAndWite extends StatefulWidget {
  const ReadAndWite({super.key});

  @override
  State<ReadAndWite> createState() => _ReadAndWiteState();
}

class _ReadAndWiteState extends State<ReadAndWite> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Read and Write PAGE"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          TextField(
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "Enter Notes",
            ),
          ),
          ElevatedButton(
              onPressed: onPressed, child: const Text("Submit Data")),
        ],
      ),
    );
  }

  void onPressed() async {
    // if(users.val)
    await users
        .add({
          'name': " Neccon",
          'age': 10,
          'note': 'First airplane',
        })
        .then((value) => print("user added the value and the value${value}"))
        .catchError((error) {
          print("The error is${error}");
        });
  }
}
