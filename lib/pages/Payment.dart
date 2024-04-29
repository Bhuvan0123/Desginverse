import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Myinput.dart';
import 'package:lottie/lottie.dart';

class Payment extends StatefulWidget {
  Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isclicked = false;
  void toggleclick() {
    isclicked = !isclicked;
  }

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
                  color: Color.fromARGB(230, 255, 193, 7),
                  borderRadius: BorderRadius.circular(12)),
              height: 500,
              width: 500,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  //login message
                  Text(
                    "Pay to proceed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),

                  //option
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //designer
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(144, 255, 255, 255)),
                          height: 350,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$ 10",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  "For a Month",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/cexplore");
                                },
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text(
                                    "Pay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      //collector
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(144, 255, 255, 255)),
                          height: 350,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$ 50",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  "For 6 Months",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/cexplore");
                                },
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text(
                                    "Pay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //pay button
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
