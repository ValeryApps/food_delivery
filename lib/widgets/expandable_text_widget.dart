import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text_widget.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool isTextHidden = true;
  double textHeight = Dimensions.size100;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: secondHalf.isEmpty
          ? SmallTextWidget(
              text: firstHalf,
              size: 17,
              height: 1.4,
              color: AppColors.paraColor,
            )
          : Column(
              children: [
                SmallTextWidget(
                  text: isTextHidden ? "$firstHalf..." : firstHalf + secondHalf,
                  size: 17,
                  height: 1.4,
                  color: AppColors.paraColor,
                ),
                InkWell(
                  onTap: (() {
                    setState(() {
                      isTextHidden = !isTextHidden;
                    });
                  }),
                  child: Row(
                    children: isTextHidden
                        ? const [
                            Text(
                              "More text",
                              style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.mainColor,
                            )
                          ]
                        : const [
                            Text(
                              "Less text",
                              style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              color: AppColors.mainColor,
                            )
                          ],
                  ),
                )
              ],
            ),
    );
  }
}
