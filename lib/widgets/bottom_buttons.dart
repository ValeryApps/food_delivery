import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text_widget.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 8,
      padding: EdgeInsets.only(
          left: width / 36, right: width / 36, bottom: width / 40),
      decoration: BoxDecoration(
        color: const Color.fromARGB(157, 190, 222, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(width / 18),
          topRight: Radius.circular(width / 18),
        ),
      ),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: height / 45,
              horizontal: width / 45,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 18),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.add),
                SizedBox(
                  width: width / 36,
                ),
                const BigTextWidget(text: "0"),
                SizedBox(
                  width: width / 36,
                ),
                const Icon(Icons.remove),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: height / 45,
              horizontal: width / 45,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 18),
                color: const Color.fromARGB(169, 47, 102, 82)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BigTextWidget(
                  text: "\$0.08 ",
                  color: Colors.white,
                ),
                BigTextWidget(
                  text: "Add to Cart",
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
