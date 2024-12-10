import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hw1/controller/tap_controller.dart';

class OnTapScreen extends StatelessWidget {
  const OnTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        children: [
        
          FloatingActionButton(onPressed: () {
            Get.find<TapController>().increment();
          }, 
          child: const Icon(Icons.add),),
        
        FloatingActionButton(onPressed: () {
            Get.find<TapController>().decrement();
        }, 
          child: const Icon(Icons.remove),),
        ]
        
      ),

      body: Center(
        child: GetBuilder<TapController>(builder: (tap) {
          return Text(
          "${tap.currentValue}", 
          style: const TextStyle(
            fontSize: 100, 
            fontWeight: FontWeight.bold),
            );

        })
      ),
    );
  }
}