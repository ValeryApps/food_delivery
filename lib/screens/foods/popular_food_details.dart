import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text_widget.dart';
import 'package:food_delivery/widgets/bottom_buttons.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:food_delivery/widgets/food_info.dart';

import '../../utils/constants.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // print(height / 18);
    // print(width / 18);
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: width,
            height: height * 3 / 7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/food0.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          left: width / 18,
          top: height / 16,
          right: width / 18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart)
            ],
          ),
        ),
        Positioned(
          top: height * 3 / 8,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width / 12),
                topRight: Radius.circular(width / 12),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FoodInfo(
                  textWidth: width / 1.2,
                  showRating: true,
                  showShadow: false,
                  text: "This food is very delicious",
                  bigFSize: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: width / 18, horizontal: width / 36),
                  child: BigTextWidget(
                    text: "Introduce",
                    color: AppColors.mainBlackColor,
                    size: width / 14,
                  ),
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: ExpandableTextWidget(text: ipsumText),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
      bottomNavigationBar: const BottomButtons(),
    );
  }
}
