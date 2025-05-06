import 'package:food_iconandfilesplash/app/data/models/users_model.dart';

class Users {
  static List<UsersModel> users = [
    //first user
    UsersModel(
      username: 'fatema',
      email: 'fati@gmail.com', 
      password: '123456'
    ),
    //second user
    UsersModel(
      username: 'jood', 
      email: 'jojo@gmail.com', 
      password: '123456'
    ),
    //third user
    UsersModel(
      username: 'maria', 
      email: 'mari@gmail.com', 
      password: '123456'
    )
    //and u can keep entering data like this to use them later in the project and call
    //them when needed
  ];
}