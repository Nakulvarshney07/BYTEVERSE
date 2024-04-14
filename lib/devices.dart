import 'package:flutter/material.dart';
import 'package:huma/global.dart';

class Devices extends StatefulWidget {
  const Devices({super.key});

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)
           
           

          
        
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
          padding: const EdgeInsets.only(left: 17,right: 20,top: 12),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Rent our Electronic product now.",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700,fontFamily: 'inspire'),),
               SizedBox(height: 20,),
              Container(
                
                color: Colors.white,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                        
                      Global(product: "Table fan", subname: "South soccer bicycle", text1: "Rent\u{20B9}${150}", text2: "per month", text3: "Buy now", text4:"\u{20B9}${2200}", img: "assets/images/Fan3.jpeg"),
                      Divider(thickness: 1,color: Colors.grey,),
                       Global(product: "Table fan",subname: "Hero Sprint Voltage 26T Single Speed ",text1: "Rent\u{20B9}${170}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${3000}",img: "assets/images/Fan5.jpeg",),
                       Divider(thickness: 1,color: Colors.grey,),
                      Global(product: "Camera", subname: "Canon Dslr with 19-55mm lens", text1: "Rent\u{20B9}${650}", text2: "per week", text3: "Buy Now", text4: "\u{20B9}${25599}", img: "assets/images/Cameraa.png" ),
                       Divider(thickness: 1,color: Colors.grey,),
                        Global(product: "Camera", subname: "Nikon D3100 with 18-55mm Lens ", text1: "Rent\u{20B9}${800}", text2: "per week", text3: "Buy Now", text4: "\u{20B9}${15899}", img: "assets/images/Camera.png" ),
                         Divider(thickness: 1,color: Colors.grey,),
                        Global(product: "Water Heater",subname: "Nova Water 1200w",text1: "Rent\u{20B9}${89}",text2: "per month",text3: "Buy Now",text4: "\u{20B9}${800}",img: "assets/images/Heater.png",),
                  ],
                ),
                
              )
            ],
          ),
        ),
      )
    );
  }
}