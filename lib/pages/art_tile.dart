// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterstoreui/models/artpiece.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtTile extends StatelessWidget {
  final ArtPiece artPiece;
  final void Function()? onTap;
  ArtTile({super.key, required this.artPiece, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
        width: 350,
        child: Column(
          children: [
            Container(
              height: 400,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent),
              child: Column(children: [
                Text(artPiece.name,
                    style: GoogleFonts.philosopher(
                        fontSize: 30, color: Colors.white)),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(artPiece.img, height: 300)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Seller: ${artPiece.artist}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(
                        artPiece.price,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ]),
            ),
// gap
// add to cart button
            GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
