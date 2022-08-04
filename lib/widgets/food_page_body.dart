import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';
import '../utils/dimensions.dart';
import 'big_text_widget.dart';
import 'food_list.dart';
import 'small_text_widget.dart';
import 'food_info.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  // ignore: unused_field
  var _currentPageValue = 0.0;
  // ignore: prefer_final_fields
  double _scaleFactor = 0.6;
  // ignore: prefer_final_fields
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimensions.size300,
          child: PageView.builder(
              controller: pageController,
              itemCount: 10,
              itemBuilder: (context, position) => _buildFoodItem(position)),
        ),
        DotsIndicator(
          dotsCount: 10,
          position: _currentPageValue,
          decorator: DotsDecorator(
            size: Size.square(Dimensions.width10),
            activeSize: Size(Dimensions.width10 * 2, Dimensions.width10),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.width5)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: Dimensions.size20,
            bottom: Dimensions.size5,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigTextWidget(text: "Popular"),
              Container(
                margin: EdgeInsets.only(
                    bottom: 2,
                    left: Dimensions.width5,
                    right: Dimensions.width5),
                child: BigTextWidget(
                  text: ".",
                  size: Dimensions.size30,
                  color: Colors.black26,
                ),
              ),
              const SmallTextWidget(text: "Food Pairing")
            ],
          ),
        ),
        const FoodList(),
      ],
    );
  }

  Widget _buildFoodItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.6;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: _height,
            margin: EdgeInsets.symmetric(
              horizontal: Dimensions.width15 / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.size25),
              color: index.isEven ? Colors.amber[800] : Colors.brown,
              image: const DecorationImage(
                image: AssetImage('assets/image/food0.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: Dimensions.size300 / 2,
            bottom: Dimensions.size20,
            left: Dimensions.width10,
            right: Dimensions.width10,
            child: FoodInfo(
              iconSize: Dimensions.width30,
              textWidth: Dimensions.size260,
            ),
          ),
        ],
      ),
    );
  }
}
