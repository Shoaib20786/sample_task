import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/theme/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      this.backgroundColor,
      this.border,
      this.textStyle,
      this.onTap});
  final double width;
  final double height;
  final String text;
  final Color? backgroundColor;
  final BoxBorder? border;
  final TextStyle? textStyle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: textStyle ??
                TextStyles.header2.copyWith(
                  fontSize: 14,
                  color: AppColors.white,
                ),
          ),
        ),
      ),
    );
  }
}
