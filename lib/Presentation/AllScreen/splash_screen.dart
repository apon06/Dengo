import 'package:dengugo/Core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double height = 50;
  double width = 50;


  @override
  void initState() {
    nextScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          height: width,
          duration: const Duration(seconds: 1),
          curve: Curves.bounceOut,
          child: Hero(tag: 'app-logo',
              child: Image.asset("assets/logo.png")),
        ),
      ),
    );
  }

  void nextScreen() async{
    await Future.delayed(const Duration(microseconds: 10));
    setState(() {
      width = Get.width - 40;
    });
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAndToNamed(AppRoutes.MAINSCREEN);
  }
}