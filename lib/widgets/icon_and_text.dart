import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text_widget.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final double? size;
  final double? txtSize;
  final Color? iconColor;
  const IconAndText(
      {Key? key,
      required this.icon,
      required this.text,
      this.size = 14,
      this.txtSize = 12,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Icon(
          icon,
          size: size,
          color: iconColor,
        ),
        const SizedBox(
          width: 2,
        ),
        SmallTextWidget(
          text: text,
          size: txtSize,
        )
      ]),
    );
  }
}
