import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Data {
  final int userID;
  final int id;
  final String title;
  final String body;

  Data({required this.userID, required this.id, required this.title, required this.body});

  
}