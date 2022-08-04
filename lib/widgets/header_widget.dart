import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import '../widgets/big_text_widget.dart';
import '../widgets/small_text_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigTextWidget(text: "Liberia "),
              Row(
                children: const [
                  SmallTextWidget(text: "Monrovia"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ],
          ),
          Container(
            width: Dimensions.width55,
            height: Dimensions.size55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.mainColor,
            ),
            child: Center(
              child: Icon(
                Icons.search,
                size: Dimensions.size25,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
