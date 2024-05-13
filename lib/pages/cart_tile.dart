// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutterstoreui/models/artpiece.dart';
import 'package:google_fonts/google_fonts.dart';

class CartTile extends StatelessWidget {
  final ArtPiece artPiece;
  final void Function()? onTap;
  CartTile({super.key, required this.artPiece, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: EdgeInsets.all(10),
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
                  Text(artPiece.name),
                ],
              ),
              Row(
                children: [
                  Text(artPiece.price),
                  GestureDetector(
                    onTap: onTap,
                    child: Icon(
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
