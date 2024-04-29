import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:lottie/lottie.dart";

class LottieFiles extends StatelessWidget {
  const LottieFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //lottie files
            Container(
              child: Lottie.asset("lib/assets/lottie/ballons.json",
                  fit: BoxFit.cover),
            ),
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(158, 255, 255, 255)),
                    child: Center(
                      child: Text(
                        "hi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
