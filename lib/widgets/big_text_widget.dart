import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class BigTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final TextOverflow? overflow;
  const BigTextWidget({
    Key? key,
    required this.text,
    this.color = AppColors.mainColor,
    this.size = 23,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
