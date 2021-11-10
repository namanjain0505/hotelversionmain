import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'dashboard.dart';
import 'login.dart';
import 'onboarding.dart';
import 'profile.dart';
import 'registration.dart';
import 'settings.dart';
import 'start.dart';
import 'terms_and_conditions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking',
      debugShowCheckedModeBanner: false,
      //scrollBehavior: MyScrollBehaviour(),
      routes: {
        'settings': (context) => Setting(),
        'dashboard': (context) => Dashboard(),
        'Login': (context) => Login(),
        'start': (context) => StartPage(),
        'Register': (context) => Register(),
        'profile': (context) => Profile(),
        'onboarding': (context) => Onbording(),
        'about': (context) => About(),

        'terms_and_conditions': (context) => Terms_and_conditions(),
      },
      home: Onbording(),
    );
  }
}


/*AnimatedSplashScreen(
        splash: Icons.star_border_purple500_sharp,
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.redAccent,
        nextScreen: Onbording(),
      ),*/