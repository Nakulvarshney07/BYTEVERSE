import 'package:flutter/material.dart';

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
    );
  }
}