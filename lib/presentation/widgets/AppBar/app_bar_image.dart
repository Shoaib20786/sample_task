import 'package:flutter/material.dart';

class AppBarImage extends StatelessWidget {
  const AppBarImage(
      {super.key,
      required this.imagePath,
      this.margin,
      this.onTap,
      this.height,
      this.width});
  final double? height;
  final double? width;
  final String imagePath;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: Image.asset(
          imagePath,
          height: height ?? 20,
          width: width ?? 20,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
