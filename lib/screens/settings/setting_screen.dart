import 'package:flutter/material.dart';
import 'package:hw1/screens/apis/api_photo_sample_screen.dart';
import 'package:hw1/screens/apis/api_sample_screen.dart';
import 'package:hw1/screens/login_form/login_screen.dart';
import 'package:hw1/screens/marksheets/marksheet_screen.dart';
import 'package:hw1/screens/product_page/product_page_screen.dart';
import '../grid/grid_screen.dart';
import '../registration_form/register_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              );
            },
            child: const Text("Registration Form"),
          ),
      
          const SizedBox(height: 10),
      
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text("Login"),
          ),
      
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GridScreen(),
                ),
              );
            },
            child: const Text("Grid"),
          ),
      
          const SizedBox(height: 10),
      
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductPageScreen(),
                ),
              );
            },
            child: const Text("Product Page"),
          ),
      
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const MarksheetScreen(),
                ),
              );
            },
            child: const Text("Marksheet"),
          ),
      
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const ApiSampleScreen(),
                ),
              );
            },
            child: const Text("Api 1 sample"),
          ),
      
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const ApiPhotoSampleScreen(),
                ),
              );
            },
            child: const Text("Api photo"),
          ),
      
          const SizedBox(height: 10),

        ],
      ),
    );
  }
}