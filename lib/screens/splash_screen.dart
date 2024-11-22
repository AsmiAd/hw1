import 'package:flutter/material.dart';
import 'package:hw1/screens/login_form/login_screen.dart';
import '../storage/shared_preference_storage.dart';
import 'package:hw1/screens/main_screen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (checkLoggedIn()) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
      }
    });
  }

  bool checkLoggedIn() {
    return SharedPreferenceStorage.getToken == null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 164, 229, 231),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", width: 400, height: 400),

            //Text("Our CV App",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),),
            const SizedBox(height: 20),
            const CircularProgressIndicator(color: Colors.black,),
          ],
        ),
        )
    );
  }
}