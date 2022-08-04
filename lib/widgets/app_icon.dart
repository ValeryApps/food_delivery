import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color bgColor;
  final double iconSize;
  final Color iconColor;
  const AppIcon({
    Key? key,
    required this.icon,
    this.size = 40,
    this.bgColor = const Color.fromARGB(255, 245, 241, 241),
    this.iconColor = const Color.fromARGB(255, 71, 70, 70),
    this.iconSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: bgColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
