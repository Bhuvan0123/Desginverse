import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size scsize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Design Verse"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/option");
                },
                icon: Icon(Icons.login)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/demo");
                },
                icon: Icon(Icons.explore))
          ],
        ),
        body: Stack(children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Lottie.asset("lib/assets/lottie/bluewave.json",
                fit: BoxFit.fill),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //heading
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset("lib/assets/lottie/cube.json"),
                  Text(
                    "DesignVerse",
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "Explore a vibrant world of creativity and innovation at Designverse, where designers showcase their unique textile creations and collectors discover inspiring designs.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/option");
                },
                child: Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(160, 223, 216, 216)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "GO",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ))),
              )
            ],
          ),
        ]));
  }
}
