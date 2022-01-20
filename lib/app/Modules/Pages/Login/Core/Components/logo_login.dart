import 'package:doctor_home/app/Modules/Core/StyleGuide/Controller/style_guide.dart';
import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  const LogoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Hero(
        tag: "logoSplash",
        child: Image.asset(
          StyleGuide().logoAsset,
          height: 100,
          width: 100,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
