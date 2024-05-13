import 'package:flutter/material.dart';
import 'package:flutterstoreui/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 151, 186),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/images/typhoon.jpeg'),
            Text(
              "Cyclone",
              style: GoogleFonts.philosopher(color: Colors.white, fontSize: 48),
            ),
            Text("Beautiful pixel art, from your phone",
                style: GoogleFonts.philosopher(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.philosopher(
                        color: Colors.black, fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
