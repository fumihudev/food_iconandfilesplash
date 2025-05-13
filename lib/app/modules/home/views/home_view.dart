import 'package:flutter/material.dart';
import 'package:food_iconandfilesplash/app/data/food.dart';
import 'package:food_iconandfilesplash/app/modules/home/views/food_details_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Food.food.length,
        itemBuilder: (context, index){
          return Padding(padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Get.to(()=> FoodDetailsView(food: Food.food[index]));
            },
            child: Column(
              children: [
                Image.asset(Food.food[index].image),
                Text(Food.food[index].name)
              ],
            ),
          ),
        );
      },)
    );
  }
}
