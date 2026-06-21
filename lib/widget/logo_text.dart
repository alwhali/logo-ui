import 'package:flutter/material.dart';
import 'package:level_1/utils/color_app.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [ColorApp.primaryColor, ColorApp.secondaryColor],
        begin: Alignment.topCenter,
        end: Alignment.center,
      ).createShader(Rect.fromLTWH(0.0, 0.0, bounds.height, bounds.height)),
      child: Text(
        "LOGO",
        style: TextStyle(
          fontSize: 80,
          fontFamily: "Prime",
          // height: 61,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
