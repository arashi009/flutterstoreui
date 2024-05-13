import 'package:flutter/material.dart';
import 'package:flutterstoreui/models/artpiece.dart';

class Cart extends ChangeNotifier {
  List<ArtPiece> gallery = [
    ArtPiece(
        name: "The Congregate",
        artist: "arashi",
        price: "\$0.99",
        img: "lib/images/img1.jpeg"),
    ArtPiece(
        name: "The Congregate II",
        artist: "arashi",
        price: "\$1.99",
        img: "lib/images/img2.jpeg"),
    ArtPiece(
        name: "Waterfall Temple",
        artist: "yukio",
        price: "\$0.60",
        img: "lib/images/img3.jpeg"),
    ArtPiece(
        name: "The Estate",
        artist: "kazumi",
        price: "\$0.87",
        img: "lib/images/img4.jpeg"),
    ArtPiece(
        name: "Pagodas",
        artist: "ryu",
        price: "\$2.99",
        img: "lib/images/img5.jpeg"),
    ArtPiece(
        name: "Sakura Bliss",
        artist: "yusanari",
        price: "\$1.99",
        img: "lib/images/img6.jpeg"),
    ArtPiece(
        name: "Night Walk",
        artist: "kazuha",
        price: "\$0.99",
        img: "lib/images/img7.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "haruki",
        price: "\$3.00",
        img: "lib/images/img8.jpeg"),
  ];

  List<ArtPiece> userCart = [];

  List<ArtPiece> getGallery() => gallery;

  void addItemToCart(ArtPiece ap) {
    userCart.add(ap);
    notifyListeners();
  }

  void removeFromCart(ArtPiece ap) {
    userCart.remove(ap);
    notifyListeners();
  }
}
