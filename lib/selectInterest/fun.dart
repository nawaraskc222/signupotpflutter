import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

class Funnnn {
  void pass() {
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
    );
  }
}
