import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';

enum SizeState { unavailable, available, selected }

class SizeListItemWidget extends StatelessWidget {
  final String label;
  final SizeState state;
  final VoidCallback? onTap;
  const SizeListItemWidget(
      {super.key, required this.label, required this.state, this.onTap});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;

    switch (state) {
      case SizeState.unavailable:
        backgroundColor = AppColors.grey3;
        borderColor = Colors.transparent;
        break;
      case SizeState.available:
        backgroundColor = AppColors.white;
        borderColor = AppColors.grey2;
        break;
      case SizeState.selected:
        backgroundColor = AppColors.white;
        borderColor = AppColors.black1;
        break;
    }
    return GestureDetector(
      onTap: state == SizeState.available ? onTap : null,
      child: Container(
        width: 48,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: state == SizeState.unavailable
                ? AppColors.grey2
                : AppColors.black1,
            fontWeight:
                state == SizeState.selected ? FontWeight.w700 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
