import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class InfoPage extends StatelessWidget {
  final String about =
      '"Cyclone" is a digital marketplace built on Flutter, specifically designed for pixel art enthusiasts. It presents a diverse collection of pixel art pieces, each radiating its own unique charm. Users can leisurely scroll through the items for sale, immersing themselves in the world of vibrant and intricate designs. The user-friendly interface of "Cyclone" allows art lovers to effortlessly add their chosen pieces to the cart, ensuring a seamless shopping experience. Moreover, "Cyclone" demonstrates efficient navigation between pages with a bottom navigation bar and a drawer, making the exploration of this pixel art store a truly enjoyable journey.';
  final String arashi =
      "This store user interface was built by arashi009, Year 3 Computer Science Student, Currently learning flutter and excited about the direction that it takes me in";
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 151, 186),
      appBar: AppBar(
        title: const Text("About"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              "Cyclone",
              style: GoogleFonts.philosopher(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Divider(height: 1),
            Text(
              about,
              style: GoogleFonts.philosopher(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Designer",
              style: GoogleFonts.philosopher(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Divider(height: 1),
            Text(
              arashi,
              style: GoogleFonts.philosopher(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
