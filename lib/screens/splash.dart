import 'package:flutter/material.dart';
import 'package:main_app/screens/login_screen.dart';
import 'dart:async';
import 'package:main_app/screens/profile.dart';

class splash extends StatefulWidget{

  @override
  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<splash>{

  @override
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),

      );
    });
  }

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      // backgroundColor: const Color.fromRGBO(44, 54, 57, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Image.asset(
              'assets/ic_scriptgram_2.png',
              height: 128,),
            
          ],
        ),
      ),
    );
  }

}