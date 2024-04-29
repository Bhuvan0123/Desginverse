import 'package:flutter/material.dart';

class Myinput extends StatelessWidget {
  final bool ishidden;
  final String name;
  final TextEditingController tc;
  const Myinput(
      {super.key,
      required this.ishidden,
      required this.tc,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: TextField(
          obscureText: ishidden,
          controller: tc,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            hintText: name,
          ),
        ),
      ),
    );
  }
}
