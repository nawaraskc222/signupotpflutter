import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  // final _controller = quill.QuillController.basic();
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      body: Column(
        children: [
          // QuillEditor.basic(
          //   controller: _controller,
          //   readOnly: false, // true for view only mode
          // ),
          QuillToolbar.basic(
            controller: _controller,
          ),

          QuillEditor.basic(
            controller: _controller,
            readOnly: false,
            //  scrollController: scrollController, scrollable: scrollable, padding: padding, autoFocus: autoFocus, readOnly: readOnly, expands: expands)
          ),
        ],
      ),
    );
  }
}
