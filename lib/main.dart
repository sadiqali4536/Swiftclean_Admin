import 'package:flutter/material.dart';
import 'package:swiftclean_admin/MVVM/view/Dashboard/desktop_scaffold.dart';
import 'package:swiftclean_admin/MVVM/view/Dashboard/mobile_scaffold.dart';
import 'package:swiftclean_admin/MVVM/Responsive/responsive_layput.dart';
import 'package:swiftclean_admin/MVVM/view/Dashboard/tablet_scaffold.dart';
import 'package:swiftclean_admin/MVVM/view/Registrationpage.dart';
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
      debugShowCheckedModeBanner: false,
      home: //MainScreen(),
            //Registrationpage(),
            //Forgetpassword(),
            // Loginpage()
            ResponsiveLayout(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold(),
      ),   
    );
  }
}

