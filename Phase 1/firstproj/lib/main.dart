import 'package:firebase_core/firebase_core.dart';
import 'package:firstproj/Controllers/bindings/bindings.dart';
import 'package:firstproj/Utils/root.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AuthBinding(),
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        accentColor: Colors.white,
        fontFamily: 'Kufam',
      ),
      home: Root(),
    );
  }
}
