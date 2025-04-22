import 'package:get/get.dart';

import '../controllers/animatesplash_controller.dart';

class AnimatesplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatesplashController>(
      () => AnimatesplashController(),
    );
  }
}
