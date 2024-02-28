import 'dart:async';

import 'package:e_corp/screens/auth-ui/welcome-screen.dart';
import 'package:e_corp/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
//import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), () {
      Get.offAll(() => WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              // alignment: Alignment.center,
              // color: Colors.white,
              child: Lottie.asset('assets/images/splash-icon.json',fit: BoxFit.cover),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 120.0),
              width: Get.width,
              alignment: Alignment.center,
              child: Text(
                AppConstant.appPoweredBy,
              style: TextStyle(
                color: AppConstant.appTextColor,
                fontSize: 17.0,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}