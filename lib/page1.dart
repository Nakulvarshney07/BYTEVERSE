import 'package:flutter/material.dart';
import 'package:huma/global2.dart';

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
        title:
           
            Icon(Icons.abc,color: Colors.white,size: 40,),

          
        
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
               
               Global2(img: "assets/images/Boks1.png", text1: "Books", text2: "Buy or sell books "),
                SizedBox(width: 20,),
             Global2(img: "assets/images/Exchange.jpg", text1: "sell", text2: "Buy or Rent\n prodcuts"),
               
              ],
            ),
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Global2(img: "assets/images/cycle.png", text1: "Transportation", text2: "Make memorable\n      moment"),
                 SizedBox(width: 20,),
                 Global2(img: "assets/images/fan.png", text1: "Electronic\n Devices", text2:"   Rent or sell\nelectronic products")
                  
              ],
            )
          ],
        ),),
      ),
    );
  }
}