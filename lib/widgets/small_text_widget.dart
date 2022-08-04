import 'package:flutter/material.dart';

class SmallTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final double? height;
  const SmallTextWidget({
    Key? key,
    required this.text,
    this.color = Colors.black26,
    this.size = 12,
    this.height = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
        height: height,
      ),
    );
  }
}
