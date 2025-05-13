import 'package:flutter/material.dart';
import 'package:swiftclean_admin/MVVM/view/forgetpassword.dart';
import 'package:swiftclean_admin/MVVM/view/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //Forgetpassword(),
             Loginpage()
    );
  }
}

