import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey=GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  final passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _width=MediaQuery.of(context).size.width;
    final _height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/anshulassets/finalbackground.jpg'),
                fit: BoxFit.cover,
              ),

            ),
          ),
          Center(
            child: Container(
              width: 250, // Width of child container
              height: 370, // Height of child container

              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),

              ),
              // Color with opacity
            ),
          ),
          Center(
            child: ClipRect(
              // Ensure blur doesn't exceed bounds
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  width: 200, // Width of child container
                  height: 300, // Height of child container

                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.transparent.withOpacity(0.1),
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.transparent,
                        blurRadius: 12,
                        spreadRadius: 5,
                      )]
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(11),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('User Login' ,
                          style: TextStyle(fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: emailcontroller,

                                )
                              ],
                            )
                        )
                      ],
                    ),
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}