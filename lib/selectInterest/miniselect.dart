import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:myapp/selectInterest/fun.dart';

class Miniselector extends StatefulWidget {
  const Miniselector({super.key});

  @override
  State<Miniselector> createState() => MminiselectorState();
}

class MminiselectorState extends State<Miniselector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("selector"),
      ),
      body: Center(
        child: Column(
          children: [
            MultiSelectContainer(
              items: [
                MultiSelectCard(value: 'Dart', label: 'Dart'),
                MultiSelectCard(value: 'Python', label: 'Python'),
                MultiSelectCard(value: 'JavaScript', label: 'JavaScript'),
                MultiSelectCard(value: 'Java', label: 'Java'),
                MultiSelectCard(value: 'C#', label: 'C#'),
                MultiSelectCard(value: 'C++', label: 'C++'),
                MultiSelectCard(value: 'Go Lang', label: 'Go Lang'),
                MultiSelectCard(value: 'Swift', label: 'Swift'),
                MultiSelectCard(value: 'PHP', label: 'PHP'),
                MultiSelectCard(value: 'Kotlin', label: 'Kotlin'),
                MultiSelectCard(value: 'Assembly', label: 'Assembly'),
              ],
              onChange: (List<Object?> selectedItems, Object? selectedItem) {
                print(selectedItem);
              },
            ),
          ],
        ),
      ),
    );
  }
}
