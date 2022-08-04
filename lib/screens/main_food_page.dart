import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/food_page_body.dart';
import '../widgets/header_widget.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: Dimensions.size55,
          left: Dimensions.width10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              SizedBox(
                height: Dimensions.size5,
              ),
              const FoodPageBody(),
            ],
          ),
        ),
      ),
    );
  }
}
