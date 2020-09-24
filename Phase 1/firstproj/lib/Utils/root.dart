import 'package:firstproj/Controllers/auth_controller.dart';
import 'package:firstproj/Controllers/userController.dart';
import 'package:firstproj/Screens/home.dart';
import 'package:firstproj/Screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(initState: (_) async {
      Get.put<UserController>(UserController());
    }, builder: (_) {
      if (Get.find<AuthController>().user?.uid != null) {
        return Home();
      } else {
        return SplashScreen();
      }
    });
  }
}
