import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huma/initialpages/Login_Page.dart';
import 'package:huma/navigation.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final auth=FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    final user=auth.currentUser;
    if(user != null){
      Timer(Duration(microseconds: 1),
          (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => app()));
          });
    }else{
      Timer(Duration(microseconds: 1),
              (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
          });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          // decoration: BoxDecoration(
          //   // image: DecorationImage(
          //   //     image: AssetImage('assets/anshulassets/rental.png'),
          //   //   fit: BoxFit.cover
          //   // )
          // ),
        ),
      ),
    );
  }
}