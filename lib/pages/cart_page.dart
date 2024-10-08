import "package:flutter/material.dart";
import "package:flutterstoreui/models/artpiece.dart";
import "package:flutterstoreui/pages/cart.dart";
import "package:flutterstoreui/pages/cart_tile.dart";
import "package:google_fonts/google_fonts.dart";
import "package:provider/provider.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Text(
                    "Your Cart",
                    style: GoogleFonts.philosopher(
                        color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: ((context, index) {
                        ArtPiece ap = value.userCart[index];
                        return CartTile(
                          artPiece: ap,
                          onTap: () => value.removeFromCart(ap),
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: ((context) => AlertDialog(
                                title: const Text(
                                  "Successfully checked out",
                                  textAlign: TextAlign.center,
                                ),
                                content:
                                    const Text("Check your bank account :)"),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {
                                      value.emptyCart();
                                      (Navigator.pop(context));
                                    },
                                    color: Color.fromARGB(255, 147, 151, 186),
                                    textColor: Colors.white,
                                    child: const Text("Okay"),
                                  )
                                ],
                                backgroundColor: Colors.white,
                              )),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 65,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Checkout",
                          style: GoogleFonts.poppins(fontSize: 15),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
