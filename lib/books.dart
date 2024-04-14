import 'package:flutter/material.dart';
import 'package:huma/global.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:
           
          Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)

          
        
      ),
      body:Container(
        width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          padding: const EdgeInsets.only(left: 17,right: 20,top: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Want to read books at low rental prices?",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700,fontFamily: 'inspire'),),
                 SizedBox(height: 20,),
                 Container(
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Global(product: "Financial Book", subname: "Rich dad poor dad By Robert T.kiyosaki", text1: "Rent\u{20B9}${20}", text2: "per week", text3: "Buy now", text4:"\u{20B9}${300}", img: "assets/images/Rob.png"),
                      Divider(thickness: 1,color: Colors.grey,),
                       Global(product: "Entertaining book",subname: "Harry Potter and the cursed child ",text1: "Rent\u{20B9}${30}",text2: "per week",text3: "Buy Now",text4: "\u{20B9}${500}",img: "assets/images/puttar.png",),
                       Divider(thickness: 1,color: Colors.grey,),
                      Global(product: "Novel", subname: "The complete Novel of Sherlok Holmes by Arthur Conan Doyle", text1: "Rent\u{20B9}${38}", text2: "per week", text3: "Buy Now", text4: "\u{20B9}${600}", img: "assets/images/Lok.webp" ),
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