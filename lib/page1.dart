import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huma/books.dart';
import 'package:huma/devices.dart';
import 'package:huma/global2.dart';
import 'package:huma/sell.dart';
import 'package:huma/transportation.dart';

class Page1_screen extends StatefulWidget {
  const Page1_screen({super.key});

  @override
  State<Page1_screen> createState() => _Page1_screenState();
  
}

class _Page1_screenState extends State<Page1_screen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)
           
      ),
      body: Container(
       color: Colors.black,
       
        width: double.infinity,
        height: double.infinity,
        child: Padding(padding: EdgeInsets.only(left: 25,right: 20,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                SizedBox(width: 5,),
                 Text("What you want to do today?",style: TextStyle(color: Colors.grey.shade300,fontSize: 23,fontWeight:FontWeight.w600,),textAlign: TextAlign.left,),
               ],
             ),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               GestureDetector(
              child:  Global2(img: "assets/images/Boks1.png", text1: "Books", text2: "Buy or sell books "),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Books()), );
              },), 
                SizedBox(width: 20,),
                InkWell(
             child:  Global2(img: "assets/images/Exchange.jpg", text1: "sell", text2: "Buy or Rent\n prodcuts"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sell()));
              },),
               
              ],
            ),
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                child:Global2(img: "assets/images/cycle.png", text1: "Transportation", text2: "Make memorable\n      moment"),
                 onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Transportation()));
              },),
                 SizedBox(width: 20,),
                 InkWell(
                child:  Global2(img: "assets/images/fan.png", text1: "Electronic\n Devices", text2:" Buy or sell\n electronic \n products"),
                 onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Devices(),));
              },)
                  
              ],
            )
          ],
        ),),
      ),
    );
  }
}