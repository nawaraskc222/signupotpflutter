import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({super.key});

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My demo app"),
        ),
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Container(
              color: Colors.amber,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Center(
                    child: const Text(
                      "hello Nepal \n",
                    ),
                  ),
                  // TextButton.icon(onPressed: onPressed, icon: icon, label: label)
                  // ignore: prefer_const_constructors
                  TextButton(
                    onPressed: null,
                    child: const Text("\n\nclick me"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
