import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      
        backgroundColor: Colors.black,
        title:         
          Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)        
      ),
      body: Container(
        padding: EdgeInsets.all(17),
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            SizedBox(height: 20,),
            Text("For any details and query contact no: +917355279332,+917037811492",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),),
            SizedBox(height: 15,),
            Text("Or",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),),
             SizedBox(height: 15,),
            Text("Email us at anshulv.ug23.cs@nitp.ac.in,       nakulv.ug23.cs@nitp.ac.in",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}