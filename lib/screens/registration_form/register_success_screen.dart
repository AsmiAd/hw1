import 'package:flutter/material.dart';

import '../../models/register_request_model.dart';

class RegisterSuccessScreen extends StatelessWidget {
  const RegisterSuccessScreen({this.registerRequestModel, super.key});
  final RegisterRequestModel? registerRequestModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(registerRequestModel?.fullName ?? ''),
          Text(registerRequestModel?.email ?? ''),
          Text(registerRequestModel?.phone ?? ''),
        ],
      ),
    );
  }
}