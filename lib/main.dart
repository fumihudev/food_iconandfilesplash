import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init(); //تهيئة للGetStorage
  final _storage = GetStorage();

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      //initialRoute: AppPages.INITIAL1,
      initialRoute: _storage.hasData("username") ? AppPages.INITIAL2 : AppPages.INITIAL1,
      getPages: AppPages.routes,
    ),
  );
}
