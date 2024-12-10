import 'package:flutter/material.dart';

class NeumorphismScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E5EC), // Light background color for neumorphism
      appBar: AppBar(
        title: const Text('Neumorphism Screen'),
        backgroundColor: const Color(0xFFE0E5EC),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: const Color(0xFFE0E5EC),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              // Light shadow
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-10, -10),
                blurRadius: 20,
              ),
              // Dark shadow
              const BoxShadow(
                color: Color(0xFFA3B1C6),
                offset: Offset(10, 10),
                blurRadius: 20,
              ),
            ],
          ),
          child: const Icon(
            Icons.home,
            size: 50,
            color: Color(0xFF6F7D94),
          ),
        ),
      ),
    );
  }
}
