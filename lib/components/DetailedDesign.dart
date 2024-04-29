import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/Design.dart';
import 'package:flutter_application_1/components/MyDesigns.dart';
import 'package:flutter_application_1/pages/Editor.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class DetailedDesign extends StatefulWidget {
  final Design d;
  void Function()? ontap;
  DetailedDesign({super.key, required this.d, required this.ontap});

  @override
  State<DetailedDesign> createState() => _DetailedDesignState();
}

class _DetailedDesignState extends State<DetailedDesign> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyDesigns>(
      builder: (context, value, child) => Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Lottie.asset("lib/assets/lottie/ballons.json",
                  fit: BoxFit.cover),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          widget.d.imagepath,
                          width: 400,
                          height: 400,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //name
                      Text(
                        "Name : " + widget.d.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //description
                      Text(widget.d.description),
                      SizedBox(
                        height: 20,
                      ),

                      //like button
                      ElevatedButton(
                        onPressed: widget.ontap,
                        child: Icon(
                          Icons.favorite,
                          color: (widget.d.isliked) ? Colors.red : Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //go to editor
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Editor(),
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(12)),
                          width: 250,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Go to editor ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(146, 255, 255, 255),
                    shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
