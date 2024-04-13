import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)
           
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        padding: EdgeInsets.only(top: 10,right: 10,left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("About us:",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("This is the basic prototype for our rental app. This app will offer you basic college student needs which will help them make their life more easier,efficent and pocket friendly.",style: TextStyle(color:Colors.white ),),
            SizedBox(height: 30,),
            Text("Advantage of using this app:",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("Transportation at low rate:",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Text("In college life, all students can't afford bicycles at high rates of 8k-20k, and after they pass out they don't have to use it. So we come up with a solution of providing bicycles at low rental prices and if someone wants to buy it they can also do it.",style: TextStyle(color:Colors.white ),),
            SizedBox(height: 10,),
            Text("Books at low cost",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Text("We know that not everyone is a book lover. But most of the people who reads atleast 30min a day they gain a lot of knowledge. We provide facility to buy and sell 2nd hand books or novels at low rate this will help us to make best use of books and novels. ",style: TextStyle(color: Colors.white),),
            SizedBox(height: 30,),
            Row(
              children: [
                Text("Made with",style: TextStyle(color: Colors.white,fontSize: 23),),
                Icon(Icons.favorite,color: Colors.red,),
                Text("in India",style: TextStyle(color: Colors.white,fontSize: 23),)
              ],
            )


            

            
          ],
        ),
      ),
    );
  }
}