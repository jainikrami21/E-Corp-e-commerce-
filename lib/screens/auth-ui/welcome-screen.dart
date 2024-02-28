import 'package:e_corp/screens/auth-ui/sign-in-screen.dart';
import 'package:e_corp/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appSecondaryColor,
        title: Text("Welcome to My App", style: TextStyle(color: AppConstant.appTextColor,
        ),
        ), 
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
              height:300,
              width:300,
              child: Lottie.asset("assets/images/splash-icon.json",fit: BoxFit.cover),
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                "Happy Shopping",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                  ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Material(
              child: Container(
                width: 260,
                height: 50,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              child: TextButton.icon(
                icon: Image.asset("assets/images/google-icon.png", 
                width: Get.width/12,
                height: Get.height/12,
                ),
                label: Text("Sign in with Google", style: TextStyle(color: AppConstant.appTextColor , fontSize: 18),),
                onPressed: (){},
                ),
                ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              child: Container(
                width: 260,
                height: 50,
                decoration:  BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              child: TextButton.icon(
                icon: Image.asset("assets/images/email.png", 
                width: Get.width/12,
                height: Get.height/12,
                ),
                label: Text("Sign in with Email", style: TextStyle(color: AppConstant.appTextColor , fontSize: 18),),
                onPressed: (){},
                ),
                ),
            ),
            ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                    }, child: Text('Login'))

          ],
        ),
      ),
    );
  }
}