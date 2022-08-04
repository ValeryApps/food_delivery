import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text_widget.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text_widget.dart';

class FoodInfo extends StatelessWidget {
  final double? iconSize;
  final String text;
  final double? fsize;
  final double? bigFSize;
  final bool showRating;
  final bool showShadow;
  final String? description;
  final double textWidth;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  const FoodInfo({
    Key? key,
    this.iconSize,
    this.fsize = 12,
    this.showRating = true,
    this.textWidth = 150,
    this.showShadow = true,
    this.text = "Very very good food",
    this.topLeft = 20,
    this.topRight = 20,
    this.bottomLeft = 20,
    this.bottomRight = 20,
    this.bigFSize = 23,
    this.description = "Please don't forget to add your description here",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.width10,
      ),
      padding: EdgeInsets.all(Dimensions.width10 - 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
          color: Colors.white,
          boxShadow: showShadow
              ? const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                  BoxShadow(
                    offset: Offset(-5, 0),
                    color: Colors.white,
                  ),
                  BoxShadow(
                    offset: Offset(5, 0),
                    color: Colors.white,
                  ),
                ]
              : []),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: textWidth,
            child: BigTextWidget(
              text: text,
              color: Colors.black,
              size: bigFSize,
            ),
          ),
          SizedBox(
            height: Dimensions.size10,
          ),
          showRating
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => const Icon(
                          Icons.star,
                          color: AppColors.mainColor,
                          size: 14,
                        ),
                      ),
                    ),
                    const SizedBox(),
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                    const SmallTextWidget(
                      text: "4.5",
                      size: 14,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    const SmallTextWidget(text: "2.3k comments"),
                  ],
                )
              : SizedBox(
                  width: textWidth,
                  child: Text(
                    description!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.mainBlackColor),
                  ),
                ),
          SizedBox(
            height: Dimensions.size20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndText(
                icon: Icons.circle,
                text: "Normal",
                iconColor: Colors.orange,
                size: iconSize,
                txtSize: fsize,
              ),
              IconAndText(
                icon: Icons.place,
                text: "2.3 km",
                iconColor: AppColors.mainColor,
                size: iconSize,
                txtSize: fsize,
              ),
              IconAndText(
                icon: Icons.access_time,
                text: "30 min",
                iconColor: Colors.red,
                size: iconSize,
                txtSize: fsize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
