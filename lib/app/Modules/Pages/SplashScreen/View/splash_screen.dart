import 'package:doctor_home/app/Modules/Core/StyleGuide/Controller/style_guide.dart';
import 'package:doctor_home/app/Modules/Pages/SplashScreen/Controller/transition_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TransitionScreenController().transitionToLogin();
    return Scaffold(
      backgroundColor: const Color(0xff00C6AD),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Hero(
            tag: "logoSplash",
            child: Image.asset(
              StyleGuide().logoAsset,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
