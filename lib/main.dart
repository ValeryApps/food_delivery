import 'package:flutter/material.dart';
import 'package:food_delivery/screens/recommended_food_screen.dart';
import 'package:get/get.dart';

// import 'screens/foods/popular_food_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RecommendedFoodScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
