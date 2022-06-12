import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:mtnapp4/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/103154-becket-loader-01.json'),
      /*splash: Column(
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
      ),*/
      backgroundColor: Colors.white,
      nextScreen: const LoginScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      splashIconSize: 500,
      duration: 4000,
    );
  }
}
