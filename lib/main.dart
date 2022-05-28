import 'package:flutter/material.dart';
import 'package:projetofinal/pages/apresentation/onboarding_screen.dart';
import 'package:projetofinal/pages/home/home_page.dart';
import 'package:projetofinal/pages/login/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIGECOMJUS APP',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'/introducao': (context) => OnboardingScreen(),
               '/home': (context) => HomePage(),
               '/login': (context) => LoginScreen(),
      }
    );
  }
}
