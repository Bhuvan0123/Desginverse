import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editor"),
      ),
      body: Text("hello"),
    );
  }
}
