import 'package:flutter/material.dart';
import 'dart:ui';

class MorphismScreen extends StatelessWidget {
  const MorphismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade400,
      appBar: AppBar(
        title: const Text('Morphism'),
        backgroundColor: Colors.lightGreen.shade600,
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
        
            // Neumorphism
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Neumorphism Clicked!')),
                );
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade300,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(4, 4),
                      color: Colors.lightGreen.shade400,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      offset: const Offset(-4, -4),
                      color: Colors.lightGreen.shade200,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Neumorphism',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
                
            const SizedBox(height: 30),
                
            // Glassmorphism
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Glassmorphism Clicked!')),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.5), width: 1.5),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(4, 4),
                          color: Colors.lightGreen.shade400,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          offset: const Offset(-4, -4),
                          color: Colors.lightGreen.shade200,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          color: Colors.white.withOpacity(0.1),
                          child: const Center(
                            child: Text(
                              'Glassmorphism',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
