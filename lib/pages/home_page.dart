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
  final List _pages = [const Shop(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 151, 186),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InfoPage()));
              },
              child: Text("Cyclone",
                  style: GoogleFonts.philosopher(
                      color: Colors.white, fontSize: 30)),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        actions: [
          GestureDetector(
              onTap: () => setState(() {
                    _selectedIndex = 1;
                  }),
              child: const Icon(Icons.shopping_cart))
        ],
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
        backgroundColor: const Color.fromARGB(255, 121, 126, 168),
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
                    tileColor: const Color.fromARGB(255, 121, 126, 168),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
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
                    tileColor: const Color.fromARGB(255, 121, 126, 168),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Cart"),
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
                    tileColor: const Color.fromARGB(255, 121, 126, 168),
                    leading: const Icon(Icons.info_outline),
                    title: const Text("About"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InfoPage()));
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  iconColor: Colors.white,
                  tileColor: const Color.fromARGB(255, 121, 126, 168),
                  textColor: Colors.white,
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroPage()));
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
