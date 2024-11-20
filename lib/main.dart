import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'storage/shared_preference_storage.dart';

// void main(){
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(), 
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(fontFamily:'PlaywriteGBS' ),
      );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceStorage.init();
  runApp(const MyApp());
}