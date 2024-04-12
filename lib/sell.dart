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
        title:
           
            Icon(Icons.abc,color: Colors.white,size: 40,),

          
        
      ),
    );
  }
}