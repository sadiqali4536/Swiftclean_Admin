import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swiftclean_admin/MVVM/utils/notification_badge.dart';
import 'package:swiftclean_admin/MVVM/view/Dashboard/desktop_scaffold.dart';
import 'package:swiftclean_admin/MVVM/view/Dashboard/mobile_scaffold.dart';
import 'package:swiftclean_admin/MVVM/Responsive/responsive_layput.dart';
import 'package:swiftclean_admin/MVVM/view/Dashboard/tablet_scaffold.dart';
import 'package:swiftclean_admin/MVVM/view/loginpage.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/Dashboard/Dashboard.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/worker/profile_Worker.dart';
import 'package:swiftclean_admin/firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
             StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
               builder: (context,snapshot) {
                if(snapshot.hasData){
                   return 
                      ResponsiveLayout(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold(),
           );
                }else{
                  return Loginpage();
                }
               }
             )
          //   ResponsiveLayout(
          //   mobileScaffold: MobileScaffold(),
          //   tabletScaffold: TabletScaffold(),
          //   desktopScaffold: DesktopScaffold(),
          //  ),
          // ProfileWorker()
           
    );
  }
}

