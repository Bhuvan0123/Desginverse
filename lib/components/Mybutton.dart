import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String name;
  void Function()? ontap;
  Mybutton({super.key, required this.name, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
              child: Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          width: double.maxFinite,
          height: 80,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: .50, color: const Color.fromARGB(59, 0, 0, 0)))),
        ),
      ),
    );
  }
}
