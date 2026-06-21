import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_1/screens/login_screen.dart';
import 'package:level_1/widget/logo_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,

          appBar: AppBar(backgroundColor: Colors.white),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 70),
                LogoText(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.42),
                Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Welcome'.toUpperCase(),
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      //write introduction
                      ' A new way to create and share your creative ideas with the world',
                      style: GoogleFonts.inter(
                        color: Color(0xff515151),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // //line and light 1
        // Positioned(
        //   top: 0,
        //   left: 51,

        //   child: SvgPicture.asset("assets/images/line_of_light.svg"),
        // ),
        // Positioned(
        //   top: 333,
        //   // left: 45,
        //   left: 51 - 25,
        //   child: SvgPicture.asset("assets/images/light.svg"),
        // ),

        // //line and light 2
        // Positioned(
        //   top: -30,
        //   left: 109,

        //   child: SvgPicture.asset("assets/images/line_of_light.svg"),
        // ),
        // Positioned(
        //   top: 303,
        //   // left: 45,
        //   left: 109 - 25,
        //   child: SvgPicture.asset("assets/images/light.svg"),
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Positioned(
            child: Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/splash1.svg",
                    height: MediaQuery.of(context).size.height * 0.70,
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
