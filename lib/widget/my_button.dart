import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_1/utils/color_app.dart';

class MYButton extends StatelessWidget {
  MYButton({super.key, required this.text, required this.onTap});
  String text;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: double.infinity,
        width: 200,
        // padding: EdgeInsets.symmetric(horizontal: 60),
        height: 50,
        decoration: BoxDecoration(
          //make color gredent
          gradient: LinearGradient(
            colors: [ColorApp.primaryColor, ColorApp.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
