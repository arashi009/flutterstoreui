// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutterstoreui/pages/cart.dart";
import "package:flutterstoreui/pages/intro_page.dart";
import "package:provider/provider.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
