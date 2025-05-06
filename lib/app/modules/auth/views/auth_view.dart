import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  AuthView({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text('Enter Email'),
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Enter Password'),
                border: OutlineInputBorder()
              ),
            ),
            ElevatedButton(
              onPressed: () {
                  controller.login(
                  _emailController.text.trim(),
                  _passwordController.text.trim()
                );
              }, 
              child: Text('Login')
            )
          ],
        ),
      )
    );
  }
}
