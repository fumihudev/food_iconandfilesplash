import 'package:flutter/material.dart';
import 'package:food_iconandfilesplash/app/data/models/users_model.dart';
import 'package:food_iconandfilesplash/app/data/users.dart';
import 'package:food_iconandfilesplash/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController


  //for ease of use for developer, these variables are created:
  //a variable from GetStorage
  final GetStorage _storage = GetStorage();

  //a variable to call the users' data
  final List <UsersModel> users = Users.users;

  get username => null;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> login (String email, String password) async {
    try {
      final user = users.firstWhere(
        (u) => u.email == email && u.password == password
      );
      await _storage.write('email', user.email);
      await _storage.write('username', user.username);
      Get.offAllNamed(Routes.ROOT);
    } catch (e) {
      Get.snackbar(
        'Error', 
        'Email or Password is incorrect!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white
      );
    }
  }

  
}
