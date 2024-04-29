import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Design.dart';
import 'package:flutter_application_1/components/ItemTemplate.dart';
import 'package:flutter_application_1/components/MyDesigns.dart';
import 'package:provider/provider.dart';

class DesignerProfile extends StatefulWidget {
  const DesignerProfile({super.key});

  @override
  State<DesignerProfile> createState() => _DesignerProfileState();
}

class _DesignerProfileState extends State<DesignerProfile> {
  //remove from liked designs
  void removefromliked(Design d) {
    Provider.of<MyDesigns>(context, listen: false).unlikedesign(d);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyDesigns>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/images/background/back5.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(221, 226, 222, 222),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_pin,
                          size: 200,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Hello, Designer !",
                          style: TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Designs Uploaded",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: value.likeddesigns.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      Design d = value.likeddesigns[index];
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
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            //image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                d.imagepath,
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
