import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/food_info.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.size300 * 1.9,
      // color: Colors.red,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(
                vertical: 3.0,
              ),
              // height: 200,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.width100 + Dimensions.width40,
                      height: Dimensions.width100 + Dimensions.width40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.size15),
                          bottomLeft: Radius.circular(Dimensions.size15),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/image/food0.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: Dimensions.size20,
                      ),
                      child: FoodInfo(
                        iconSize: Dimensions.size15,
                        showRating: false,
                        showShadow: false,
                        textWidth: Dimensions.screenWidth / 2.15,
                        bottomLeft: 0,
                        topLeft: 0,
                        // description: "This is the description ",
                      ),
                    ),
                  ]),
            );
          }),
    );
  }
}
