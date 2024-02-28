import 'package:e_corp/screens/auth-ui/sign-in-screen.dart';
import 'package:e_corp/screens/auth-ui/splash-screen.dart';
import 'package:e_corp/screens/auth-ui/welcome-screen.dart';
import 'package:e_corp/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible){
      return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        centerTitle: true,
        title: Text("Sign Up",style: TextStyle(color: AppConstant.appTextColor,fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
            SizedBox(
                height: 20,
              ),
            Container(
            alignment: Alignment.center,
            child: Text("Welcome to my app",style: TextStyle(color: AppConstant.appSecondaryColor , fontWeight: FontWeight.bold, fontSize: 16.0),),
            ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 325,
                child : Padding(padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
        
                  ),
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 325,
                child : Padding(padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "UserName",
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
        
                  ),
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 325,
                child : Padding(padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Phone",
                    prefixIcon: Icon(Icons.phone),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
        
                  ),
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 325,
                child : Padding(padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    hintText: "City",
                    prefixIcon: Icon(Icons.location_pin),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
        
                  ),
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 325,
                child : Padding(padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  ),
                ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                child: Container(
                  width: 160,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                child: TextButton(
                  child: Text("SIGN UP", style: TextStyle(color: AppConstant.appTextColor , fontSize: 18),),
                  onPressed: (){},
                  ),
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Already Have An Account? ", 
                style: TextStyle(color: AppConstant.appSecondaryColor, fontSize: 16),
                ),
                GestureDetector(
                  onTap: ()=> Get.offAll(()=> SignInScreen()),
                  child: Text("Sign In",  
                  style: TextStyle(color: AppConstant.appSecondaryColor , fontWeight: FontWeight.bold, fontSize: 16),),
                ),
              ],
              ),
              ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                    }, child: Text('welcome'))

            ],
          ),
        ),
      ),
      );
      }
    );
  }
}