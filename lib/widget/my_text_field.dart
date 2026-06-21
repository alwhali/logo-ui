import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_1/utils/color_app.dart';

class MyTextField extends StatelessWidget {
  MyTextField({super.key, required this.hintText, required this.icon});
  String hintText;
  Icon icon;
  // TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      decoration: BoxDecoration(
        color: ColorApp.backgroundFieldColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        // controller: textEditingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          icon: icon,
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
