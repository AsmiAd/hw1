import 'package:flutter/material.dart';
import 'package:hw1/controllers/cart_controller.dart';
import 'screens/splash_screen.dart';
import 'storage/shared_preference_storage.dart';
import 'package:get/get.dart';
// void main(){
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceStorage.init();
  Get.put(CartController());
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}