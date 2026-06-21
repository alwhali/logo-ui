import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_1/screens/login_screen.dart';
import 'package:level_1/widget/my_button.dart';
import 'package:level_1/widget/my_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Lets' Get Started!",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  "Create an accont on MNZL to get all features ",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 40),
                MyTextField(
                  hintText: "First Name",
                  icon: Icon(Icons.person_2_outlined),
                ),
                SizedBox(height: 25),
                MyTextField(
                  hintText: "Last Name",
                  icon: Icon(Icons.person_2_outlined),
                ),
                SizedBox(height: 20),
                MyTextField(
                  hintText: "User Name",
                  icon: Icon(Icons.person_2_outlined),
                ),
                SizedBox(height: 20),
                MyTextField(
                  hintText: "Email",
                  icon: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 20),
                MyTextField(
                  hintText: "Password",
                  icon: Icon(Icons.lock_outline),
                ),
                SizedBox(height: 20),
                MyTextField(
                  hintText: "Confirm Password",
                  icon: Icon(Icons.lock_outline),
                ),
                SizedBox(height: 25),
                MYButton(text: "Create".toUpperCase(), onTap: () {}),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
