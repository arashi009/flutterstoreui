// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:flutterstoreui/pages/cart_page.dart';
import 'package:flutterstoreui/pages/info_page.dart';
import 'package:flutterstoreui/pages/intro_page.dart';
import 'package:flutterstoreui/pages/shop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List _pages = [Shop(), CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 151, 186),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text("Typhoon",
                style:
                    GoogleFonts.philosopher(color: Colors.white, fontSize: 30)),
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        onTabChange: (index) => setState(() {
          _selectedIndex = index;
        }),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        color: Colors.white,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
            borderRadius: BorderRadius.circular(15),
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
            borderRadius: BorderRadius.circular(15),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 121, 126, 168),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('lib/images/typhoon.jpeg')),
                ),
                Text(
                  "Cyclone",
                  style: GoogleFonts.philosopher(
                      color: Colors.white, fontSize: 45),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    tileColor: Color.fromARGB(255, 121, 126, 168),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    tileColor: Color.fromARGB(255, 121, 126, 168),
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    tileColor: Color.fromARGB(255, 121, 126, 168),
                    leading: Icon(Icons.info_outline),
                    title: Text("About"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InfoPage()));
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  iconColor: Colors.white,
                  tileColor: Color.fromARGB(255, 121, 126, 168),
                  textColor: Colors.white,
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IntroPage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
