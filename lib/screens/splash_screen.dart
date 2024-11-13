import 'package:flutter/material.dart';
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

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });
    
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