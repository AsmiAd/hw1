import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Fruit {
  String? name ;
  String? color;

  Fruit (
    this.name ,  this.color
  );

}

class Vegetable {
  String name ;
  String color;

  Vegetable ({
    required this.name , required this.color
  });
}

class Student {
  String name ;
  int age;

  Student ({
    required this.name , required this.age
  });
}

class Country {
  String name ;
  double area;

  Country ({
    required this.name , required this.area
  });
}

class School {
  String name ;
  String location;

  School ({
    required this.name , required this.location
  });
}
