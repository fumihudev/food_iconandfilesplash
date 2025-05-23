import 'package:flutter/material.dart';
import 'package:food_iconandfilesplash/app/modules/auth/controllers/auth_controller.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final AuthController authController = Get.find();
  final GetStorage storage = GetStorage();
  //the find of this page is for ProfileController but we need AuthController, so that used Get.find()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hello, ${storage.read('username')}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
