import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Design.dart';
import 'package:flutter_application_1/components/ItemTemplate.dart';
import 'package:flutter_application_1/components/MyDesigns.dart';
import 'package:provider/provider.dart';

class CollectorProfile extends StatefulWidget {
  const CollectorProfile({super.key});

  @override
  State<CollectorProfile> createState() => _CollectorProfileState();
}

class _CollectorProfileState extends State<CollectorProfile> {
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
                    image: AssetImage("lib/assets/images/background/back1.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 222, 222),
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
                          "Hello, Collector !",
                          style: TextStyle(fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Liked designs",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: value.likeddesigns.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      Design d = value.likeddesigns[index];
                      return ItemTemplate(
                        d: d,
                        ontap: () => removefromliked(d),
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
