import 'package:flutter/material.dart';
import 'package:huma/navigation.dart';
<<<<<<< HEAD

import 'initialpages/Login_Page.dart';

=======

>>>>>>> 4f05df7db6d8c08a97acfaa88f25eabda5e95058

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     // title: "Byteverse",
     // initialRoute: '/',
     // routes: {
     //  '/':(context) => app(),
     // },
      home: LoginPage(),
    );
  }
}
