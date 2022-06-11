import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mtnapp4/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            'assets/pic.png',
            width: 300,
            height: 300,
          ),
          const Text(
            'InnoTekSo',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: const LoginScreen(),
      splashIconSize: 250,
      duration: 4000,
    );
  }
}
