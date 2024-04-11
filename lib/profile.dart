import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
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
               Text("Nakul",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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