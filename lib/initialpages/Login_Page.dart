import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huma/initialpages/Signup_page.dart';

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
                image: AssetImage("assets/anshulassets/finalbackground.jpg"),
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
                  width: 250, // Width of child container
                  height: 370, // Height of child container

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                          style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Form(
                                    key: formkey,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          child: TextFormField(
                                            controller: emailcontroller,
                                            decoration: InputDecoration(
                                                hintText: 'Enter your Email',
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2
                                                    )
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2
                                                    )
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    borderSide: BorderSide(
                                                        color: Colors.red,
                                                        width: 2
                                                    )
                                                ),
                                                focusedErrorBorder:  OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(18),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2
                                                  ),),

                                                prefixIcon: Icon(Icons.alternate_email,color: Colors.grey,)
                                            ),
                                            validator:  (value){
                                              if(value!.isEmpty){
                                                return 'Enter Correct Email';

                                              }
                                              return null;
                                            },
                                          ),
                                          width: 200,
                                          height: 80,

                                        ),
                                        SizedBox(
                                          width: 200,
                                          height: 80,
                                          child: TextFormField(
                                            controller: passcontroller,
                                            decoration: InputDecoration(
                                                hintText: 'Enter your Passowrd',
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2
                                                    )
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2
                                                    )
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(18),
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2
                                                  ),
                                                ),
                                                focusedErrorBorder:  OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(18),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2
                                                  ),),
                                                prefixIcon: Icon(Icons.password_sharp,color: Colors.grey,)
                                            ),
                                            validator:  (value){
                                              if(value!.isEmpty){
                                                return 'Enter Correct Password';
                                                setState(() {

                                                });

                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 3.5,),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.grey),
                                          ),
                                            onPressed: (){
                                              if (formkey.currentState!.validate())  {

                                              }
                                            },
                                            child: Text('Login' , style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.w400),)),
                                        SizedBox(height:15 ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Create new Account?'),
                                            SizedBox(width: 20,),
                                            InkWell(
                                              onTap: (){
                                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp()));
                                              },
                                              child: Text('Sign up', style: TextStyle(
                                                  color: Colors.green.withOpacity(0.8)
                                              ),),
                                            )
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
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