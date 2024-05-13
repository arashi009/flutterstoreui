import 'package:flutterstoreui/models/artpiece.dart';

class Cart {
  List<ArtPiece> gallery = [
    ArtPiece(
        name: "The Congregate",
        artist: "arashi",
        price: "\$0.99",
        img: "lib/images/img1.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "haruki",
        price: "\$1.99",
        img: "lib/images/img2.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "yukio",
        price: "\$0.60",
        img: "lib/images/img3.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "kazumi",
        price: "\$0.87",
        img: "lib/images/img4.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "ryu",
        price: "\$2.99",
        img: "lib/images/img5.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "yusanari",
        price: "\$1.99",
        img: "lib/images/img6.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "kazuha",
        price: "\$0.99",
        img: "lib/images/img7.jpeg"),
    ArtPiece(
        name: "The Congregate",
        artist: "byakuya",
        price: "\$3.00",
        img: "lib/images/img8.jpeg"),
  ];

  List<ArtPiece> userCart = [];

  List<ArtPiece> getGallery() => gallery;

  void addItemToCart(ArtPiece ap) {
    userCart.add(ap);
  }

  void removeFromCart(ArtPiece ap) {
    userCart.remove(ap);
  }
}
