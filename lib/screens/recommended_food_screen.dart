// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text_widget.dart';

import '../widgets/expandable_text_widget.dart';

class RecommendedFoodScreen extends StatelessWidget {
  const RecommendedFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.close),
                AppIcon(icon: Icons.shopping_cart)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 190, 129, 7),
                ),
                child: const Center(
                    child: BigTextWidget(
                  text: "Sliver Appbar",
                  color: Colors.white,
                )),
              ),
            ),
            pinned: true,
            // toolbarHeight: 70,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            // collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  SizedBox(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text: ipsumText + ipsumText + ipsumText),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: Dimensions.size300 / 2,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 48.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(
                    icon: Icons.remove,
                    bgColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    iconSize: 23,
                  ),
                  BigTextWidget(
                    text: "\$89.392",
                    size: 33,
                  ),
                  AppIcon(
                    icon: Icons.add,
                    bgColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    iconSize: 23,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppIcon(
                    icon: Icons.favorite,
                    iconColor: AppColors.mainColor,
                    iconSize: 30,
                    size: 60,
                    bgColor: Colors.white,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.mainColor,
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: const BigTextWidget(
                        text: "\$34.90 Add to cart",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
