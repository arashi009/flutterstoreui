import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              // backgroundColor: const Color.fromARGB(255, 147, 151, 186),
              backgroundColor: Colors.white,
              title: Text(
                "Sucess",
                style: GoogleFonts.poppins(color: Colors.black),
              ),
              content: Text("added to cart",
                  style: GoogleFonts.poppins(color: Colors.black)),
              actions: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: const Color.fromARGB(255, 147, 151, 186),
                    textColor: Colors.white,
                    child: const Text("Okay"),
                  ),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
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
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                    "Recommended",
                    style: GoogleFonts.philosopher(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
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
