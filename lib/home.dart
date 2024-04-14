import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huma/global.dart';
import 'package:huma/global1.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  var searchtext=TextEditingController();
  var _fullname;
  Future<void> _fetchUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final docRef = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final docSnapshot = await docRef.get();
      if (docSnapshot.exists) {
        final userData = docSnapshot.data();
        setState(() {
          _fullname = userData?['fullName'] as String;
        });
      }
      
    }
  }
  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.black,
            title:Row(
              children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    
                    child: CircleAvatar(
                    foregroundImage: AssetImage("assets/images/profile.png"),
                      radius: 18,
                      
                    ),
                  ),
                SizedBox(width: 15,),
                Container(
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 18),),
                      SizedBox(height: 2,),
                      Text(_fullname,style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  ),
                ),
                Expanded(child: SizedBox(),flex: 1,),
                 Icon(Icons.shopping_cart,color: Colors.white,) 
              ],
            
          
        ),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: SingleChildScrollView(
          
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5,),
              
                    SizedBox(
                      height: 100,
                      width: 317,
                      child: TextField(
                        
                        controller: searchtext,
                        cursorColor: Colors.white,
                        style: TextStyle(fontSize: 13,color: Colors.white),
                        decoration: InputDecoration(
                          
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 15,color:Colors.grey),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                      
                            ),
                      
                          ),
                           enabledBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey,
                      
                            ),
                      
                          ),
                          
                          suffixIcon: Icon(Icons.search,color: Colors.white,),

                          
                        ),
                                  
                      ),
                    ),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Text("Deals of the day",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white,),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      color: Colors.white,
                      child: Column(children: [
                        Global(product: "Cycle",subname: "Hero Sprint Voltage 26T Single Speed ",text1: "Rent\u{20B9}${200}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${6000}",img: "assets/images/cycle.png",),
                        Divider(thickness: 2,color: Colors.grey,),
                        Global(product: "Table Fan", subname: "Polycab Aery 400 mm 3 Blade Table Fan ", text1: "Rent\u{20B9}${100}", text2: "per month", text3:"Buy Now", text4: "\u{20B9}${2200}", img: "assets/images/fan.png"),
                         Divider(thickness: 2,color: Colors.grey,),
                      
                         
                      ],),

                    )
                    
                  ],
                
            ),
          ),
        ),
      ),
    );
  }
}