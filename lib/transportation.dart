import 'package:flutter/material.dart';

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
        title:
           
            Icon(Icons.abc,color: Colors.white,size: 40,),

          
        
      ),
    );
  }
}