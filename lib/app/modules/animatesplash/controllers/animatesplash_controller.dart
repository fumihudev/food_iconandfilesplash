import 'package:food_iconandfilesplash/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AnimatesplashController extends GetxController {
  //TODO: Implement AnimatesplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), (){
      Get.offAllNamed(Routes.ROOT);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
