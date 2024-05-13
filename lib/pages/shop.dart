// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterstoreui/models/artpiece.dart';
import 'package:flutterstoreui/pages/art_tile.dart';
import 'package:flutterstoreui/pages/cart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addToCart(ArtPiece ap) {
    Provider.of<Cart>(context, listen: false).addItemToCart(ap);

    void Function() onPressed;

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color.fromARGB(255, 147, 151, 186),
              title: Text(
                "Sucess",
                style: TextStyle(color: Colors.white),
              ),
              content:
                  Text("added to cart", style: TextStyle(color: Colors.white)),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.indigo,
                  textColor: Colors.white,
                  child: Text("Okay"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
//    return Center(child: Text("Shop Page"));
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
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
                      itemCount: value.gallery.length,
                      itemBuilder: (context, index) {
                        ArtPiece ap = value.getGallery()[index];
                        return ArtTile(
                          artPiece: ap,
                          onTap: () => addToCart(ap),
                        );
                      }),
                )
              ],
            ));
  }
}
