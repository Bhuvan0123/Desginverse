import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/MyDesigns.dart';
import 'package:flutter_application_1/pages/DesignerProfile.dart';
import 'package:flutter_application_1/pages/CollectorExplorePage.dart';
import 'package:flutter_application_1/pages/CLogin.dart';
import 'package:flutter_application_1/pages/CollectorProfile.dart';
import 'package:flutter_application_1/pages/DRegister.dart';
import 'package:flutter_application_1/pages/DemoExplore.dart';
import 'package:flutter_application_1/pages/DesignerExplorePage.dart';
import 'package:flutter_application_1/pages/Homepage.dart';
import 'package:flutter_application_1/pages/DLogin.dart';
import 'package:flutter_application_1/pages/OptionPage.dart';
import 'package:flutter_application_1/pages/CRegister.dart';
import 'package:flutter_application_1/pages/Payment.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyDesigns(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/clogin": (context) => CLogin(),
        "/dlogin": (context) => DLogin(),
        "/demo": (context) => DemoExplore(),
        "/dregister": (context) => DRegister(),
        "/cregister": (context) => CRegister(),
        "/dexplore": (context) => DesignerExplorePage(),
        "/cexplore": (context) => CollectorExplorePage(),
        "/option": (context) => OptionPage(),
        "/cprofile": (context) => CollectorProfile(),
        "/dprofile": (context) => DesignerProfile()
      },
    );
  }
}
