import 'package:food_iconandfilesplash/app/data/models/food_model.dart';

class Food {
  static List<FoodModel> food = [
    FoodModel(
      name: "Fettuccine Alfredo", 
      image: "assets/images/1.jpeg", 
      description: "Creamy fettuccine pasta cooked in a rich Alfredo cheese sauce, perfect for cheese lovers."),
    FoodModel(
      name: "Chicken Cheeseburger", 
      image: "assets/images/3.jpg", 
      description: "Grilled chicken patty topped with melted cheese, fresh veggies, and special sauce in a soft burger bun."),
    FoodModel(
      name: "Cheesy French Fries", 
      image: "assets/images/2.jpg", 
      description: "Crispy golden fries loaded with melted cheese for a delicious snack or side dish.")
  ];
}