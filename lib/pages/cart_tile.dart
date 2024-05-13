import 'package:flutter/material.dart';
import 'package:flutterstoreui/models/artpiece.dart';
import 'package:google_fonts/google_fonts.dart';

class CartTile extends StatelessWidget {
  final ArtPiece artPiece;
  final void Function()? onTap;
  const CartTile({super.key, required this.artPiece, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      artPiece.img,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    artPiece.name,
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    artPiece.price,
                    style: GoogleFonts.poppins(),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
