import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';

class BottomBorderContainer extends StatelessWidget {
  const BottomBorderContainer({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: padding,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.borderContainer,
            width: 1,
          ),
        ),
      ),
      child: child,
    );
  }
}
