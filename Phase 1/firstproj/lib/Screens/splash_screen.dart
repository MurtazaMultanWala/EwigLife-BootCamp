import 'dart:async';

import 'package:firstproj/Utils/constant.dart';

import 'package:firstproj/Screens/login_screen.dart';
import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _time = Duration(seconds: 3);
    return Timer(_time, navigateToHomeScreen);
  }

  void navigateToHomeScreen() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (_) => false);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: kPrimary,
          ),
        ),
        Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: ClipOval(
                      child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Image.asset(
                          "assets/images/logo.png",
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "Awesome FLutter Application",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
