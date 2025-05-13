import 'package:flutter/material.dart';
import 'package:food_iconandfilesplash/app/data/models/food_model.dart';
import 'package:food_iconandfilesplash/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';

class FoodDetailsView extends GetView<HomeController> {
  final FoodModel food;
  const FoodDetailsView({required this.food,super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(food.name),
          Image.asset(food.image),
          Text(food.description)
        ],
      ),)
    );
  }
}
