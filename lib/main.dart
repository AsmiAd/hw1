import 'package:flutter/material.dart';
import 'package:hw1/controller/calculator_controller.dart';
import 'package:hw1/controller/cart_controller.dart';
import 'package:hw1/controller/miscellaneous_controller.dart';
import 'package:hw1/controller/tap_controller.dart';
import 'screens/splash_screen.dart';
import 'storage/shared_preference_storage.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceStorage.init();
  Get.put(CartController());
  Get.put(TapController());
  Get.put(CalculatorController());
  Get.put(MiscellaneousController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
