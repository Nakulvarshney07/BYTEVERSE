import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:huma/About.dart';
import 'package:huma/help.dart';
import 'package:huma/initialpages/Login_Page.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {

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
      else{
        setState(() {
          _fullname = "Null";
        });
      }
    }
  }
  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }
  void Dialog(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Log Out'),
        content: Text('Are you sure you want to log out?'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("Cancel")),
          TextButton(onPressed: (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
              child: Text('Ok'))
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title:Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),)
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 45,),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 60,
                
                child: CircleAvatar(
                foregroundImage: AssetImage("assets/images/profile.png"),
                  radius: 55,
                  
                ),
              ),
              SizedBox(height: 8,),
               Text(_fullname,style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 20,),
             
              Container(
               
                child: Column(
                  
                  children: [
                    Container(
                      color: Colors.grey.shade900,
                      child: InkWell(
                        onTap: (){},
                        child: ListTile(
                          
                          
                          leading: Icon(Icons.person,size: 30,color: Colors.white,),
                          title: Text("Edit Profile",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.chevron_right_outlined,color: Colors.white,)
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                       color: Colors.grey.shade900,
                      child: InkWell(
                        onTap: (){

                        },
                        child: ListTile(
                          leading: Icon(Icons.location_pin,color: Colors.white,),
                         
                          title: Text("Address",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.chevron_right_outlined,color: Colors.white,)
                        ),
                      ),
                    ),
                     SizedBox(height: 5,),
                    Container(
                       color: Colors.grey.shade900,
                      child: InkWell(
                        onTap: (){
                          
                        },
                        child: ListTile(
                          
                           leading:Icon(Icons.shopping_cart ,color: Colors.white,),
                          title: Text("My Purchases",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.chevron_right_outlined,color: Colors.white,)
                        ),
                      ),
                    ),
                     SizedBox(height: 5,),
                    Container(
                        color: Colors.grey.shade900,
                      child: InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()));
                        },
                        child: ListTile(
                          
                          leading: FaIcon(FontAwesomeIcons.question,color: Colors.white,),
                          title: Text("Help",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.chevron_right_outlined,color: Colors.white,)
                        ),
                      ),
                    ),
                     SizedBox(height: 5,),
                    Container(
                       color: Colors.grey.shade900,
                      child: InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                        },
                        child: ListTile(
                          
                          leading: Icon(Icons.summarize_rounded,color: Colors.white,),
                          title: Text("About Us",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.chevron_right_outlined,color: Colors.white,)
                        ),
                      ),
                    ),
                     SizedBox(height: 5,),
                    Container(
                       color: Colors.grey.shade900,
                      child: InkWell(
                        onTap: (){
                          Dialog();
                        },
                        child: ListTile(

                          leading: Icon(Icons.logout,color: Colors.red,),
                          title: Text("Logout",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.chevron_right_outlined,color: Colors.white,)
                        ),
                      ),
                    ),
                   
                  ],
                ),
              )
            ],
          ),),
        ),
      
    );
  }
}