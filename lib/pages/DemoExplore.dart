import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/Design.dart';
import 'package:flutter_application_1/components/MyDesigns.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class DemoExplore extends StatefulWidget {
  const DemoExplore({super.key});

  @override
  State<DemoExplore> createState() => _DemoExploreState();
}

class _DemoExploreState extends State<DemoExplore> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyDesigns>(
        builder: (context, value, child) => Scaffold(
            appBar: AppBar(
              title: Text("Designer Page"),
            ),
            body: Stack(
              children: [
                Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Lottie.asset("lib/assets/lottie/ballons.json",
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(190, 224, 224, 224),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "Explore the Verse ...",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),

                      //designs list

                      Expanded(
                        child: GridView.builder(
                          itemCount: value.designs.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 4),
                          itemBuilder: (context, index) {
                            Design d = value.mydesigns[index];
                            return Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(211, 253, 252, 252),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    d.name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  //likebutton
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
