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
        title:Image(image: AssetImage("assets/images/Rental1.png"),height: 40,width: 40,)
           
           

          
        
      ),
    );
  }
}