import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/Design.dart';
import 'package:flutter_application_1/components/DetailedDesign.dart';

// ignore: must_be_immutable
class ItemTemplate extends StatelessWidget {
  final Design d;
  void Function()? ontap;
  ItemTemplate({super.key, required this.d, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailedDesign(
                    d: d,
                    ontap: ontap,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(166, 253, 252, 252),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                d.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 10,
              ),

              //image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  d.imagepath,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //category
              Text(
                "Category : " + (d.category).toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 10,
              ),
              //likebutton
              ElevatedButton(
                  onPressed: ontap,
                  child: Icon(Icons.favorite,
                      color: (d.isliked) ? Colors.red : Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
