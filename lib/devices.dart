import 'package:flutter/material.dart';

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
        title:
           
            Icon(Icons.abc,color: Colors.white,size: 40,),

          
        
      ),
    );
  }
}