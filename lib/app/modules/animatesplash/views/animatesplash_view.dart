import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/animatesplash_controller.dart';

class AnimatesplashView extends GetView<AnimatesplashController> {
  const AnimatesplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Lottie.asset(
          "assets/animations/splash_animation.json",
          width: 100,
          height: 100,
          fit: BoxFit.cover
        )
        
      ),
    );
  }
}
