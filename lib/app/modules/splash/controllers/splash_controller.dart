import 'package:food_iconandfilesplash/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
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
    Future.delayed(Duration(seconds: 3), (){
      Get.offAllNamed(Routes.HOME);
    });
  }

  void increment() => count.value++;
}
