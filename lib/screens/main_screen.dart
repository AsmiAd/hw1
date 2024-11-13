import 'package:flutter/material.dart';
import 'package:hw1/screens/product_page/product_page_screen.dart';
import 'package:hw1/screens/home/home_screen.dart';
import 'package:hw1/screens/profile/profile_screen.dart';
import 'package:hw1/screens/settings/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> data = [
    const HomeScreen(),
    const ProductPageScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: const Text("My App"),
      //   centerTitle: true,
      //   backgroundColor: const Color.fromARGB(255, 166, 207, 244),
      //   titleTextStyle: const TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 147, 199, 244),
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),

      body: data[currentIndex],
    );
  }
}