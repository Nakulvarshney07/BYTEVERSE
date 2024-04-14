import 'package:flutter/material.dart';
import 'package:huma/global.dart';

class sell extends StatefulWidget {
  const sell({super.key});

  @override
  State<sell> createState() => _sellState();
}

class _sellState extends State<sell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)
           
          

          

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 12,left: 20,right: 10),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Latest picks for you.",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700,fontFamily: 'inspire'),),
               SizedBox(height: 20,),
               Container(
                  color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                       Global(product: "Calculator", subname: "Wikio scientific calculator", text1: "Rent\u{20B9}${20}", text2: "per month", text3: "Buy now", text4:"\u{20B9}${2200}", img: "assets/images/Calc1.png"),
                      Divider(thickness: 1,color: Colors.grey,),
                       Global(product: "Drafter",subname: "Mini drafter for students ",text1: "Rent\u{20B9}${15}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${500}",img: "assets/images/Draft.webp",),
                       Divider(thickness: 1,color: Colors.grey,),
                      Global(product: "Drawing board", subname: "Isomers drawing table", text1: "Rent\u{20B9}${100}", text2: "per month", text3: "Buy Now", text4: "\u{20B9}${5000}", img: "assets/images/Draft3.jpg" ),
                       Divider(thickness: 1,color: Colors.grey,),
                        Global(product: "Drawing Table", subname: "ISOMARS DRAWING BOARD TABLE - SCHOLAR WITH WHITE LAMINATED BOARD ", text1: "Rent\u{20B9}${200}", text2: "per month", text3: "Buy Now", text4: "\u{20B9}${9399}", img: "assets/images/Draft4.png" ),
                         Divider(thickness: 1,color: Colors.grey,),
                        Global(product: "Calculator",subname: "Casio scientific calculator",text1: "Rent\u{20B9}${20}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${2500}",img: "assets/images/calc2.png",),
                    
                  ],
                ),
               )
            ],
          ),
          
        
        ),
      ),
    );
  }
}