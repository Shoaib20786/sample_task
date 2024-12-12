import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton(
      {super.key,
      this.height,
      this.width,
      required this.backgroundColor,
      this.child,
      this.onTap,
      this.icon});
  final double? height;
  final double? width;
  final Color backgroundColor;
  final Widget? child;
  final void Function()? onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width ?? 40,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: icon ?? Container(),
        ),
      ),
    );
  }
}
