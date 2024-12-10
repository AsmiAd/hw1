import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hw1/controller/calculator_controller.dart';


class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          FloatingActionButton(
            onPressed: () {
              Get.find<CalculatorController>().add();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              Get.find<CalculatorController>().sub();
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              Get.find<CalculatorController>().multiply();
            },
            child: const Icon(Icons.cancel),
          ),
          FloatingActionButton(
            onPressed: () {
              Get.find<CalculatorController>().divide();
            },
            child: const Text("/"),
          ),
        ]),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder<CalculatorController>(
            builder: (calc) {
              return Column(
                children: [
                  TextField(
                    controller: calc.firstNumberController,
                    decoration: const InputDecoration(
                      hintText: "Enter first number",
                    ),
                  ),
                  TextField(
                    controller: calc.secondNumberController,
                    decoration: const InputDecoration(
                      hintText: "Enter second number",
                    ),
                  ),
                  Text(
                    "Total : ${calc.total}",
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              );
            },
          ),
        ));
  }
}
