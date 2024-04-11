import 'package:flutter/material.dart';
import 'package:huma/home.dart';
import 'package:huma/page1.dart';
import 'package:huma/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  int myindex = 0;
 static const List<Widget> widgetList = [
  Home_screen(),
 
  Page1_screen(),
  Profile_screen(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: (
      Container(
        child: widgetList[myindex],
      )
      ),
      bottomNavigationBar:
      
       BottomNavigationBar(
         backgroundColor:Colors.black,
         
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,

        onTap:(index){
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: 
      const[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services_outlined),
            label: "Service",

          ),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.person),
            label: "Profile",

          ),
      ]),
    );
  }
}