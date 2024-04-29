import "package:flutter/material.dart";
import "package:flutter_application_1/components/Myinput.dart";
import "package:lottie/lottie.dart";

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController descontroller = new TextEditingController();
  TextEditingController catcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UploadPage"),
      ),
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Lottie.asset("lib/assets/lottie/ballons.json",
                fit: BoxFit.cover),
          ),
          Center(
            child: Container(
              height: 500,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(195, 255, 255, 255),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter the details...",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //name
                  Myinput(
                      ishidden: false,
                      tc: namecontroller,
                      name: "Enter the name"),

                  //description
                  Myinput(
                      ishidden: false,
                      tc: descontroller,
                      name: "Enter the description"),

                  //category
                  Myinput(
                      ishidden: false,
                      tc: catcontroller,
                      name: "Enter the category"),

                  SizedBox(
                    height: 70,
                  ),
                  //upload image
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(235, 231, 224, 224),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload_file_outlined,
                          size: 70,
                        ),
                        Text(
                          "Click to upload your image",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
