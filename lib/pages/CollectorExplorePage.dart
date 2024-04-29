import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/Design.dart';
import 'package:flutter_application_1/components/ItemTemplate.dart';
import 'package:flutter_application_1/components/MyDesigns.dart';
import 'package:flutter_application_1/components/Mybutton.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CollectorExplorePage extends StatefulWidget {
  const CollectorExplorePage({super.key});

  @override
  State<CollectorExplorePage> createState() => _CollectorExplorePageState();
}

class _CollectorExplorePageState extends State<CollectorExplorePage> {
  void addtoliked(Design d) {
    Provider.of<MyDesigns>(context, listen: false).likeDesign(d);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Center(child: Text(d.name + " liked")),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyDesigns>(
        builder: (context, value, child) => Scaffold(
            appBar: AppBar(
              title: Text("Explore Page"),
            ),
            drawer: Drawer(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Mybutton(
                          ontap: () {
                            Navigator.popAndPushNamed(context, '/login;');
                          },
                          name: "Login",
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Mybutton(
                            name: "Profile",
                            ontap: () {
                              Navigator.popAndPushNamed(context, "/cprofile");
                            })
                      ],
                    ),
                    Mybutton(
                        name: "Homepage",
                        ontap: () {
                          Navigator.popAndPushNamed(context, "/");
                        }),
                    Mybutton(
                        name: "Logout",
                        ontap: () {
                          Navigator.popAndPushNamed(context, "/");
                        })
                  ],
                ),
              ),
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
                                  mainAxisSpacing: 0,
                                  crossAxisSpacing: 0),
                          itemBuilder: (context, index) {
                            Design d = value.mydesigns[index];
                            return ItemTemplate(
                              d: d,
                              ontap: () => addtoliked(d),
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
