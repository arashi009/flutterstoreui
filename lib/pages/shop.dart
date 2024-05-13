// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterstoreui/models/artpiece.dart';
import 'package:flutterstoreui/pages/art_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
//    return Center(child: Text("Shop Page"));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Search not functional..."),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Recommended for You:",
            style: GoogleFonts.philosopher(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => ArtTile(
              artPiece: ArtPiece(
                  name: "The Congregate",
                  img: 'lib/images/img1.jpeg',
                  artist: 'arashi',
                  price: "\$0.99"),
            ),
          ),
        )
      ],
    );
  }
}
