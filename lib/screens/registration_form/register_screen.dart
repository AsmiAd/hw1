
import 'package:flutter/material.dart';
import '../../models/register/register_request_model.dart';
import 'register_success_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  
  final formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 166, 207, 244),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
        
          child: Column(
            children: [
        
              Row(
                children: [
        
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your first name";
                        } else {
                          return null;
                        }
                      },
                      controller: firstNameController,
                      decoration: const InputDecoration(
                        labelText: "First Name",
                        hintText: "Enter your first name",
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(),
                        focusedErrorBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
        
                  const SizedBox(
                    width: 16,
                  ),
        
                  Expanded(
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your last name";
                        } else {
                          return null;
                        }
                      },
                      controller: lastNameController,
                      decoration: const InputDecoration(
                        labelText: "Last Name",
                        hintText: "Enter your last name",
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(),
                        focusedErrorBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  } else if (!(value.contains("@") && value.contains(".com"))) {
                    return "Please enter a valid email";
                  } else {
                    return null;
                  }
                },
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email name",
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  focusedErrorBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your phone number";
                  } else if (value.length != 10) {
                    return "Please enter a valid phone number";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  labelText: "Phone",
                  hintText: "Enter your phone number",
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  focusedErrorBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: passwordController,
                obscureText: !isPasswordVisible,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  } else if (value != confirmPasswordController.text) {
                    return "Password does not match";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    child: isPasswordVisible
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                  ),
                  labelText: "Password",
                  hintText: "Enter your password",
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  errorBorder: const OutlineInputBorder(),
                  disabledBorder: const OutlineInputBorder(),
                  focusedErrorBorder: const OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(),
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  } else if (value != passwordController.text) {
                    return "Password does not match";
                  } else {
                    return null;
                  }
                },
                controller: confirmPasswordController,
                obscureText: !isConfirmPasswordVisible,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter your confirm password",
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    child: isConfirmPasswordVisible
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  errorBorder: const OutlineInputBorder(),
                  disabledBorder: const OutlineInputBorder(),
                  focusedErrorBorder: const OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(),
                ),
              ),
              
              const SizedBox(
                height: 40,
              ),
        
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      RegisterRequestModel registerRequestModel =
                          RegisterRequestModel(
                        fullName:
                            "${firstNameController.text} ${lastNameController.text}",
                        email: emailController.text,
                        phone: phoneController.text,
                        password: passwordController.text,
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterSuccessScreen(
                            registerRequestModel: registerRequestModel,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Please validate your fields"),
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: const Color.fromARGB(255, 166, 207, 244),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}