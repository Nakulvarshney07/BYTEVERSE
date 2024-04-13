import 'package:flutter/material.dart';
import 'package:huma/global.dart';

class Transportation extends StatefulWidget {
  const Transportation({super.key});

  @override
  State<Transportation> createState() => _TransportationState();
}

class _TransportationState extends State<Transportation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)
           
           
      ),
      body: 
         Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          padding: const EdgeInsets.only(left: 17,right: 20,top: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Want to Rent or buy vehicles at low rate?",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700,fontFamily: 'inspire'),),
                SizedBox(height: 20,),
                
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      
                      
                      Global(product: "Bicycle", subname: "South soccer bicycle", text1: "Rent\u{20B9}${250}", text2: "per month", text3: "Buy now", text4:"\u{20B9}${10000}", img: "assets/images/Bicycle2.jpeg"),
                      Divider(thickness: 1,color: Colors.grey,),
                       Global(product: "BiCycle",subname: "Hero Sprint Voltage 26T Single Speed ",text1: "Rent\u{20B9}${200}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${6000}",img: "assets/images/Bicycle3.jpeg",),
                       Divider(thickness: 1,color: Colors.grey,),
                      Global(product: "Bicycle", subname: "Santa high speed with gear bicycle", text1: "Rent\u{20B9}${300}", text2: "per month", text3: "Buy Now", text4: "\u{20B9}${7499}", img: "assets/images/Bicycle4.jpeg" ),
                       Divider(thickness: 1,color: Colors.grey,),
                        Global(product: "Bicycle", subname: "Sportyy mountain bicycle ", text1: "Rent\u{20B9}${350}", text2: "per month", text3: "Buy Now", text4: "\u{20B9}${8699}", img: "assets/images/Bicycle5.jpeg" ),
                         Divider(thickness: 1,color: Colors.grey,),
                        Global(product: "BiCycle",subname: "Hero Sprint Voltage 26T Single Speed ",text1: "Rent\u{20B9}${200}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${6000}",img: "assets/images/cycle.png",),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}