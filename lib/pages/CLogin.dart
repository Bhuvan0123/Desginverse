import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Myinput.dart';
import 'package:lottie/lottie.dart';

class CLogin extends StatelessWidget {
  CLogin({super.key});
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController pwdcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Lottie.asset("lib/assets/lottie/doodle.json",
                fit: BoxFit.cover),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(234, 255, 193, 7),
                  borderRadius: BorderRadius.circular(12)),
              height: 500,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      //login message
                      Text(
                        "Welcome back, Collector !",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),

                      //email
                      Myinput(
                        ishidden: false,
                        tc: emailcontroller,
                        name: "Enter email",
                      ),

                      //password
                      Myinput(
                          ishidden: true,
                          tc: pwdcontroller,
                          name: "Enter password"),
                      SizedBox(
                        height: 50,
                      ),
                      //button
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, "/cexplore");
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(232, 255, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "Enter the Verse",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      //register
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("If not registered,"),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/cregister");
                        },
                        child: Text(
                          "Click here",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
