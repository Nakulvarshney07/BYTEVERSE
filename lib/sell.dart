import 'package:flutter/material.dart';

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
    );
  }
}